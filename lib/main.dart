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
        body: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 24,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.purple[200],
                ),
              );
            })
        ),
    );
  }
}
