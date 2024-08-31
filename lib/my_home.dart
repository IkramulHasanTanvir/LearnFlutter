import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  bool videoPlaying = false;

  void _iconTapped() {
    if (videoPlaying == false) {
      _animationController.forward();
      videoPlaying = true;
    } else {
      _animationController.reverse();
      videoPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: GestureDetector(
          onTap: _iconTapped,
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_home,
            progress: _animationController,
            size: 156,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController;
  }
}
