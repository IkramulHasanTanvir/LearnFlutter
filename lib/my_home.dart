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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Height ' + MediaQuery.sizeOf(context).height.toString()),
            Text('Width ' + MediaQuery.sizeOf(context).width.toString()),
            Text('Aspect Ratio ' + MediaQuery.sizeOf(context).aspectRatio.toStringAsFixed(2)),
            Text(MediaQuery.of(context).orientation.toString()),
          ],
        ),
      ),
    );
  }
}
