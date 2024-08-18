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

        //example-1
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
              ),
            ),
          ],
        ),

        // example-2
        // body: Row(
        //   children: [
        //     Expanded(
        //       flex: 2,
        //       child: Container(
        //         color: Colors.amber,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.red,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.pink,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
