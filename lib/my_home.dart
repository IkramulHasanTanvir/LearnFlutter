import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/user_home.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text('D R A W E R'),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.favorite,
                  size: 42,
                  color: Colors.grey[800],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('H O M E'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => UserHome()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
