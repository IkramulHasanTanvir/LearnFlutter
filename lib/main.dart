import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          foregroundColor: Colors.grey[300],
          backgroundColor: Colors.deepPurple[300],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          title: Text('A P P B A R'),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.account_circle),),
          ],
        ),
      ),
    );
  }
}
