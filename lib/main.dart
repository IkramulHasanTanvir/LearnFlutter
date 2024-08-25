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
      debugShowCheckedModeBanner: false,
      home: const MyHome(),
      theme: ThemeData(textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold
        ),

        bodyMedium: TextStyle(
            fontSize: 24,
        ),

        bodySmall: TextStyle(
          fontSize: 12,
        ),

      ),
      ),
    );
  }
}
