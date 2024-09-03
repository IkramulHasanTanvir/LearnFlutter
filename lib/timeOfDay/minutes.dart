import 'package:flutter/material.dart';

class Minutes extends StatelessWidget {
  const Minutes({super.key, required this.minutes});

  final int minutes;

  @override
  Widget build(BuildContext context) {
    return Text(
      minutes < 10 ? '0$minutes' : minutes.toString(),
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 36,
        color: Colors.grey[300],
      ),
    );
  }
}
