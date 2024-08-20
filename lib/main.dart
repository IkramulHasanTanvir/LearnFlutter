import 'package:flutter/material.dart';
import 'package:learn_flutter/circle.dart';
import 'package:learn_flutter/my_square.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final List<String> _stories = ['story1', 'story2', 'story3', 'story4'];

  final List<String> _posts = ['post1', 'post2', 'post3', 'post4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stories.length,
                  itemBuilder: (context, index) {
                return Circle(child: _stories[index]);
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    child: _posts[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
