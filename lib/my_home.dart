import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepPurple[300];
  // double boxX = -1;
  // double boxY = -1;

  void _expandBox(){
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }
  void _changeColor(){
    setState(() {
      boxColor = Colors.pink[300];
    });
  }

  // void _moveBox(){
  //   setState((){
  //     boxX = 1;
  //     boxY = 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _expandBox ,
      child: Scaffold(
        body: Center(
          child: AnimatedContainer(
            //alignment: Alignment(boxX, boxY),
            height: boxHeight,
            width: boxWidth,
            color: boxColor,
            duration: Duration(seconds: 1),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              // child: Container(
              //   color: boxColor,
              //   height: boxHeight,
              //   width: boxWidth,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
