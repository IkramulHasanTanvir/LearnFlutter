import 'package:flutter/material.dart';
import 'package:learn_flutter/my_home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: 24,
        )
      )),
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
