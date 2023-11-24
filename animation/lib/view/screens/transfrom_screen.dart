import 'dart:ffi';

import 'package:flutter/material.dart';

class TransfromScreen extends StatefulWidget {
  const TransfromScreen({super.key});

  @override
  State<TransfromScreen> createState() => _TransfromScreenState();
}

class _TransfromScreenState extends State<TransfromScreen> {
  var angle = 0.0;
  double position = 0.0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    // position = width;
    return Scaffold(
      backgroundColor: Colors.cyan,

      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.black, Colors.blue]),
          ),
        ),
        title: Text('Page three'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // Transform.translate(
            // angle: angle,

            // offset: Offset(position , 0),
             AnimatedContainer(
              duration: Duration(milliseconds: 800),

              height: 200,
              width: 200,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(position)),
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.deepPurpleAccent,
                    Colors.pink,
                  ],
                ),
              ),
            ),
        
          SizedBox(
            height: 60,
          ),
          Slider(
            value: position,
            onChanged: (val) {
              setState(() {
                position = val;
              });
            },
            min: 0,
            max: 100,
          ),
          Text('$position'),
        ]),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
