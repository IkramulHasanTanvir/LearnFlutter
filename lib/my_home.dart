import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.deepPurple[300],
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.deepPurple[200],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple[100],
          ),
        ],
      ),
    ));
  }
}
