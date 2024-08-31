import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double _currentValue = 1;

  void _tappedLeftToRight(double value) {
    _currentValue = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Slider(
            activeColor: Colors.red[400],
            inactiveColor: Colors.grey[300],
            thumbColor: Colors.grey[600],
            min: 1,
            max: 100,
            divisions: 100,
            label: _currentValue.toStringAsFixed(0),
            value: _currentValue,
            onChanged: _tappedLeftToRight,
          ),
        ],
      ),
    );
  }
}
