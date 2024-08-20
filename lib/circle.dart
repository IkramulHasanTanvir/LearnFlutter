import 'package:flutter/material.dart';

class Circle extends StatelessWidget {

  String child;
  Circle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: Text(child),
      ),
    );
  }
}
