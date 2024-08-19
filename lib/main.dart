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
        //column example
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       height: 100,
        //       color: Colors.pink,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 200,
        //       color: Colors.pink[400],
        //     ),
        //     Container(
        //       height: 100,
        //       width: 150,
        //       color: Colors.pink[200],
        //     ),
        //
        //   ],
        // ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              color: Colors.pink,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.pink[400],
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.pink[200],
            ),

          ],
        ),
      ),
    );
  }
}
