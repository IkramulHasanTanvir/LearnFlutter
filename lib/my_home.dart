import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  void _showDialog (){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.deepPurple.shade100,
        title: Text('Title',style: TextStyle(fontSize: 32),),
        content: Text('hey, how are you? Brother'),
        contentPadding: EdgeInsets.all(32),
        actions: [
          TextButton(onPressed: (){}, child: Text('Ok'),),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel'),),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: _showDialog,
          child: Text('Click Here',style: TextStyle(
            fontSize: 32,
          ),),

        )
      ),
    );
  }
}
