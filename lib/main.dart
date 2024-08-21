import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHoneState();
}

class _MyHoneState extends State<MyHome> {
  //variable
  int numberOfTimesTapped = 0;

  //method
  void _increaseNumber(){
    setState((){
      numberOfTimesTapped++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _increaseNumber,
      child: Scaffold(
        backgroundColor: Colors.purple[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Tapped ' + numberOfTimesTapped.toString() + ' times',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),


              // GestureDetector(
              //   onTap: _increaseNumber,
              //   child: Container(
              //     padding: EdgeInsets.all(16),
              //     color: Colors.purple[200],
              //     child: Text(
              //       'TAP HARE',
              //       style: TextStyle(
              //           fontSize: 24,
              //       ),
              //     ),
              //   ),
              //),
            ],
          ),
        ),
      ),
    );
  }
}
