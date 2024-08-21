import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
      ),
      body: Center(
        child: Text('User Home Page'),),
    );
  }
}
