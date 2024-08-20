import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        body: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(42),
            child: Container(
              height: 300,
              width: 400,
                child: Image.asset('asset/cat.jpg',
                  fit: BoxFit.cover,
                ),

              ),
            ),
          ),
        ),
    );
  }
}
