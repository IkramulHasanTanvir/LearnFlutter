import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/page1.dart';
import 'package:learn_flutter/pages/page2.dart';
import 'package:learn_flutter/pages/page3.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          Page1(),
          Page2(),
          Page3(),
        ],
      ),
    );
  }
}
