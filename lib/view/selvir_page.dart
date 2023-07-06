import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class selvir_page extends StatefulWidget {
  const selvir_page({Key? key}) : super(key: key);

  @override
  State<selvir_page> createState() => _selvir_pageState();
}
dynamic time =0;
var currentIndex = 0;

class _selvir_pageState extends State<selvir_page> {
  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
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
                              width: index == currentIndex
                                  ? displayWidth * .13
                                  : 0,
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
                                  color: Color(0xFF033333),
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
                              width: index == currentIndex
                                  ? displayWidth * .03
                                  : 20,
                            ),
                            Icon(
                              listOfIcons[index],
                              size: displayWidth * .076,
                              color: index == currentIndex
                                  ? const Color(0xFF3E5D5F)
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(

          decoration: const BoxDecoration(   gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color(0xff051717),
                Color(0xff0d2d2d),

                Color(0xff1f6767),







                Color(0xff051717),
                // Color(0xFFF5C7CC),
                //
                // Color(0xFFD7B182),




              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Category",
                  style: TextStyle(
                      color:Color(0xffbfe5e5),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(color:  Color(0xff4d030f).withOpacity(0.7),
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    const  Color(0xff4d030f).withOpacity(0.7),
                                    blurRadius: 23,
                                    offset: const Offset(7, 7),
                                  ),
                                ],
                                border: Border.all(color: Color(0xff4d030f),)

                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Image(
                                color: Color(0xc5f8f4f4),
                                image: AssetImage('images/ring.png'),
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(color:  Color(0xff4d030f).withOpacity(0.7),
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    const  Color(0xff4d030f).withOpacity(0.7),
                                    blurRadius: 23,
                                    offset: const Offset(7, 7),
                                  ),
                                ],
                                border: Border.all(color: Color(0xff4d030f),)

                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Image(
                                color: Color(0xc5f8f4f4),
                                image: AssetImage('images/earrings.png'),
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(color:  Color(0xff4d030f).withOpacity(0.7),
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    const  Color(0xff4d030f).withOpacity(0.7),
                                    blurRadius: 23,
                                    offset: const Offset(7, 7),
                                  ),
                                ],
                                border: Border.all(color: Color(0xff4d030f),)

                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Image(
                                color: Color(0xc5f8f4f4),
                                image: AssetImage('images/necklace.png'),
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(color:  Color(0xff4d030f).withOpacity(0.7),
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    const  Color(0xff4d030f).withOpacity(0.7),
                                    blurRadius: 23,
                                    offset: const Offset(7, 7),
                                  ),
                                ],
                                border: Border.all(color: Color(0xff4d030f),)

                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Image(
                                color: Color(0xc5f8f4f4),
                                image: AssetImage('images/braclet.png'),
                                width: 70.0,
                                height: 70.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                              height: 82,
                              width: 76,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    const Color(0xff89bebb).withOpacity(0.7),
                                    blurRadius: 7,
                                    offset: const Offset(2, 2),
                                  ),
                                ],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Center(
                                        child: Text(
                                          "All",
                                          style: TextStyle(
                                              color:Colors.white60, fontSize: 38),
                                        ))),)
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child:  Container(

                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.show_chart,size: 30,color:Color(0xFFD7B182)),
                            ),
                            Text("Live Silver price per gram ",style: TextStyle(fontSize: 20,letterSpacing: 1,color: Color(
                                0xed033333)),),
                          ],
                        ),
                      ),
                      Text("Today  12:36  7/5/2023",style: TextStyle(fontSize: 20,letterSpacing: 1,
                          color:Colors.white60.withOpacity(0.4)),),

                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text("500  ",style: TextStyle(fontSize: 40,letterSpacing: 1,
                              color: Colors.black54),),
                        ),
                      ),
                    ],
                  ),

                  decoration: BoxDecoration(



                    borderRadius: BorderRadius.circular(15),
                    color:Colors.white12,),

                  width: double.infinity,
                  height: 150,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(

                  decoration: BoxDecoration(



                    borderRadius: BorderRadius.circular(15),
                    color:Colors.white12,),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "New Jewelry",
                          style: TextStyle(
                              color: Color(0xFF0D2D2D),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      color: Color(0xFF0F4F4F),
                                      child:  Text("New",style: TextStyle(fontSize: 20,letterSpacing: 1,
                                          color:Colors.white60.withOpacity(0.4)),),
                                    ),
                                    Container(

                                      width: 180,
                                      height: 220,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.only(bottomStart:  Radius.circular(50),topEnd: Radius.circular(50)),
                                        border: Border.all(
                                            color: const Color(0xECEDEDEF)
                                                .withOpacity(0.4),
                                            width: 2),


                                        color: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 180,
                                      height: 220,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.only(bottomStart:  Radius.circular(50),topEnd: Radius.circular(50)),

                                        border: Border.all(
                                            color: const Color(0xECEDEDEF)
                                                .withOpacity(0.4),
                                            width: 2),

                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 180,
                                      height: 220,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusDirectional.only(bottomStart:  Radius.circular(50),topEnd: Radius.circular(50)),

                                        border: Border.all(
                                            color: const Color(0xECEDEDEF)
                                                .withOpacity(0.4),
                                            width: 2),

                                        color: Colors.white70,
                                      ),
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
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
