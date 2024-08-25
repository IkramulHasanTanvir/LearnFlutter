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
      home: MyHome(),
      theme: ThemeData(textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 44,
        ),

        bodyMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
        ),

        bodySmall: TextStyle(
          fontSize: 12,
        ),

      ),
      ),
    );
  }
}
