import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TimeOfDay _timeOfDay = const TimeOfDay(hour: 12, minute: 00);

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((onValue) {
      _timeOfDay = onValue!;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              _timeOfDay.format(context).toString(),
              style: const TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: _showTimePicker,
              child: const Text('T I M E P I C K E R'),
            ),
          ],
        ),
      ),
    );
  }
}
