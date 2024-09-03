import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  const AmPm({super.key, required this.isItAm});

  final bool isItAm;

  @override
  Widget build(BuildContext context) {
    return Text(
      isItAm == true ? 'am' : 'pm',
      style:  TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 36,
        color: Colors.grey[300],
      ),
    );
  }
}
