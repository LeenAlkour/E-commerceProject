import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class golden_page extends StatefulWidget {
  const golden_page({Key? key}) : super(key: key);

  @override
  State<golden_page> createState() => _golden_pageState();
}

var currentIndex = 0;

class _golden_pageState extends State<golden_page> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(displayWidth * .05),
        height: displayWidth * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == currentIndex ? displayWidth * .12 : 0,
                    width: index == currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == currentIndex
                          ? Colors.grey.withOpacity(.1)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == currentIndex
                                  ? '${listOfStrings[index]}'
                                  : '',
                              style: const TextStyle(
                                color: Color(0xFFE7BB7D),
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == currentIndex ? displayWidth * .03 : 20,
                          ),
                          Icon(
                            listOfIcons[index],
                            size: displayWidth * .076,
                            color: index == currentIndex
                                ? const Color(0xFFE7BB7D)
                                : Colors.black26,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          backgroundColor: const Color(0xfff8f8f8),
          title: const Text(
            "J & F",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w300, color: Colors.black),
            textAlign: TextAlign.right,
          ),
          elevation: 0.2,
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.shopping_cart_outlined, color: Colors.black),
            )
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFE7BB7D).withOpacity(0.05),
                      blurRadius: 20,
                      offset: const Offset(10, 10),
                    ),
                  ],
                  gradient: LinearGradient(colors: [
                    const Color(0xFFE7BB7D),
                    const Color(0xFFE7BB7D).withOpacity(0.5),
                    const Color(0xFFE7BB7D).withOpacity(0.6),
                    const Color(0xFFE7BB7D).withOpacity(0.4),
                    const Color(0xFFE7BB7D),
                  ])),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                      child: Text(
                    "400",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  )),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Live Gold price per gram",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFFE7BB7D).withOpacity(0.4), width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFE7BB7D).withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(5, 5),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Image(
                        color: Color(0xFFE7BB7D),
                        image: AssetImage('images/ring.png'),
                        width: 70.0,
                        height: 70.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFFE7BB7D).withOpacity(0.4), width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFE7BB7D).withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(5, 5),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Image(
                        color: Color(0xFFE7BB7D),
                        image: AssetImage('images/necklace.png'),
                        width: 70.0,
                        height: 70.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFFE7BB7D).withOpacity(0.4), width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFE7BB7D).withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(5, 5),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Image(
                        color: Color(0xFFE7BB7D),
                        image: AssetImage("images/earrings.png"),
                        width: 70.0,
                        height: 70.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFFE7BB7D).withOpacity(0.4), width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFE7BB7D).withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(5, 5),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Image(
                        color: Color(0xFFE7BB7D),
                        image: AssetImage('images/bracelet.png'),
                        width: 70.0,
                        height: 70.0,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    width: 83,
                    height: 83,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFFE7BB7D).withOpacity(0.4), width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFFE7BB7D).withOpacity(0.3),
                          blurRadius: 20,
                          offset: const Offset(5, 5),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Center(child: Text("All",style: TextStyle(color: Color(0xFFE7BB7D),fontSize: 38),))
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(


              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFFFFFFFF),
    borderRadius: BorderRadius.circular(20),),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Row(
                    children: [Text("new",style: TextStyle(color:Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),),
                      SizedBox(width: 240,),
                      Text("see all",style: TextStyle(fontSize: 20,color:Colors.grey,),)],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal
                    ,
                    child: Row(
                      children: [
                        Container(
                          width: 180,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color(0xFFE7BB7D).withOpacity(0.4), width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFFE7BB7D).withOpacity(0.3),
                                blurRadius: 20,
                                offset: const Offset(5, 5),
                              ),
                            ],
                            color: Colors.white60,
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 180,
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: const Color(0xFFE7BB7D).withOpacity(0.4), width: 2),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFFE7BB7D).withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: const Offset(5, 5),
                                ),
                              ],
                              color: Colors.white60,
                            ),

                          ),
                        ),
                        Container(
                          width: 180,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color(0xFFE7BB7D).withOpacity(0.4), width: 2),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFFE7BB7D).withOpacity(0.3),
                                blurRadius: 20,
                                offset: const Offset(5, 5),
                              ),
                            ],
                            color: Colors.white60,
                          ),

                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

List<IconData> listOfIcons = [
  Icons.home_rounded,
  Icons.favorite_rounded,
  Icons.settings_rounded,
  Icons.person_rounded,
];

List<String> listOfStrings = [
  'Home',
  'Favorite',
  'Settings',
  'Account',
];
