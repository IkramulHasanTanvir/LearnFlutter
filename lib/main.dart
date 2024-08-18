import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Center(

          //Example-1
          // child: Container(
          //   height: 200,
          //   width: 200,
          //   color:Colors.amber,
          // ),

          //example-2
          // child: Container(
          //   alignment: Alignment.center,
          //   height: 200,
          //   width: 200,
          //   color: Colors.amber,
          //   child: Text('example-2'),
          // ),

          //example-3
          // child: Container(
          //   padding: EdgeInsets.all(32),
          //   height: 200,
          //   width: 200,
          //   decoration: BoxDecoration(
          //     color: Colors.amber,
          //     border: Border.all(color: Colors.grey.shade500,width: 4),
          //     shape: BoxShape.circle,
          //     backgroundBlendMode: BlendMode.darken
          //   ),
          //   child: Text('example-2'),
          // ),

          //example-4
          // child: Container(
          //   height: 200,
          //   width: 200,
          //   decoration: BoxDecoration(
          //     color: Colors.grey.shade300,
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey.shade500,
          //         offset: Offset(4.0, 4.0), // bottomRight(+)
          //         blurRadius: 16.0,
          //         spreadRadius: 1.0
          //       ),
          //
          //       BoxShadow(
          //         color: Colors.white,
          //         offset: Offset(-4.0, -4.0), // topLeft(-)
          //         blurRadius: 16.0,
          //         spreadRadius: 1.0
          //       ),
          //
          //     ],
          //   ),
          // ),

          //example-5
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey.shade200,
                  Colors.grey.shade300,
                  Colors.grey.shade400,
                  Colors.grey.shade500,
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  0.9,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
