import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff8f8f8),
        appBar: AppBar(
            centerTitle: true,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            backgroundColor: const Color(0xfff8f8f8),
            title: Text(
              "J & F",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                  color: Colors.black),
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
        drawer: Drawer(
            surfaceTintColor: Colors.red,
            child: IconButton(
              onPressed: () {
                print("object");
              },
              color: Colors.cyan,
              icon: const Icon(Icons.accessibility),
            )),
        body: Column(
          children: [
            // Container(
            //   height: 70,
            //   decoration: const BoxDecoration(
            //       color: Color(0xECEDEDEF),
            //       borderRadius: BorderRadius.only(
            //           bottomLeft: Radius.circular(20),
            //           bottomRight: Radius.circular(20))),
            //   width: double.infinity,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       IconButton(
            //         icon: const Icon(Icons.menu),
            //         onPressed: () {
            //           Lol();
            //         },
            //       ),
            //       Expanded(
            //         child: Container(
            //           child: Center(
            //             child: const Text(
            //               "J & F",
            //               style: TextStyle(
            //                   fontSize: 25,
            //                   height: 1.5,
            //                   fontWeight: FontWeight.w300),
            //               textAlign: TextAlign.right,
            //             ),
            //           ),
            //         ),
            //       ),
            //       IconButton(
            //         icon: const Icon(Icons.shopping_cart_outlined),
            //         onPressed: () {},
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                  height: 180,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Color(0xFFFDFDFE)),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(18.0),
                        child: AvatarGlow(
                          glowColor: Color(0x62d28991),
                          endRadius: 60.0,
                          duration: Duration(milliseconds: 8000),
                          repeat: true,
                          showTwoGlows: true,
                          repeatPauseDuration: Duration(milliseconds: 600),
                          child: Material(
                            // Replace this child with your own
                            elevation: 8.0,
                            shape: CircleBorder(),
                            child: CircleAvatar(
                              backgroundColor: Colors.white38,
                              child: const Icon(
                                Icons.person,
                                size: 60,
                                color: Color(0x62d28991),
                              ),
                              radius: 40.0,
                            ),
                          ),
                        ),
                        // CircleAvatar(
                        //   backgroundColor: Color(0x56E7AC55),
                        //   radius: 45,
                        //   child: Icon(
                        //     Icons.person,
                        //     size: 60,
                        //     color: Color(0x62d28991),
                        //   ),
                        // ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello Leen",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                            Text(
                              "Good Luck !",
                              style: TextStyle(
                                  fontSize: 25,
                                  height: 1.5,
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFE7BB7D),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(130))),
                          alignment: Alignment.bottomLeft,
                          width: double.infinity,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 170.0, top: 50),
                          child: Text(
                            "Gold",
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 50,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 160.0, right: 20.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFE4AEAC),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(130))),
                          alignment: Alignment.bottomLeft,
                          width: double.infinity,
                          child: const Padding(
                            padding: EdgeInsets.only(left: 45.0, bottom: 200),
                            child: Text(
                              "Flower",
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 50,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 325.0, left: 20.0),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFF3E5D5F),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(130))),
                      alignment: Alignment.bottomLeft,
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 170.0, bottom: 50,top: 40),
                        child: Column(
                          children: [
                            Text(
                              "Selvir",
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 50,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(130))),
                        alignment: Alignment.bottomLeft,
                        width: double.infinity,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(130))),
                        alignment: Alignment.bottomLeft,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Future<void> Lol() async {
//   var headers = {'Accept': 'application/json'};
//   var request =
//       http.Request('GET', Uri.parse('http://10.0.2.2:8000/api/silverPrice'));
//
//   request.headers.addAll(headers);
//
//   http.StreamedResponse response = await request.send();
//
//   if (response.statusCode == 200) {
//     print("ok");
//     //  print(await response.stream.bytesToString());
//   } else {
//     print("not ok");
//     //print(response.reasonPhrase);
//   }
// }
