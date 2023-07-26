import 'package:flutter/material.dart';

class SizerRingPage extends StatefulWidget {
  const SizerRingPage({Key? key}) : super(key: key);

  @override
  State<SizerRingPage> createState() => _SizerRingPageState();
}
double x = 100;
class _SizerRingPageState extends State<SizerRingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF810023),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.all(12.0),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 300,width: 300,
                  child: GridPaper(color: Colors.grey,subdivisions: 2, interval: 3.78,
                  ),
                ),
                Container(height: x,width: x,child: CircularProgressIndicator(
                  color: Color(0xFF810023),
                  value: 10,

                ),)

              ],
            ),
          ),
Slider(value: x,min:1,max: 100,divisions: 5, onChanged: (value){
    setState(() {
     x = value;
     print("$value");
    });
    },
 )

        ],
      ),
    );
  }
}
