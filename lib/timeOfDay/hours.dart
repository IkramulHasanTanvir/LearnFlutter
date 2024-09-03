import 'package:flutter/material.dart';

class Hours extends StatelessWidget {
  const Hours({super.key, required this.hours});

  final int hours;

  @override
  Widget build(BuildContext context) {
    return Text(
      hours.toString(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 36,
        color: Colors.grey[300],
      ),
    );
  }
}
