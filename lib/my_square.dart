import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {

  String child;
  MySquare({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        alignment: Alignment.center,
        height: 400,
        color: Colors.deepPurple.shade100,
        child: Text(child,style: TextStyle(
          fontSize: 42,
        ),),
      ),
    );
  }
}
