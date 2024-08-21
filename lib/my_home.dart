import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/account.dart';
import 'package:learn_flutter/pages/message.dart';
import 'package:learn_flutter/pages/settings.dart';
import 'package:learn_flutter/pages/user_home.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHoneState();
}

class _MyHoneState extends State<MyHome> {

  int _selectedIndex = 0;

  List<Widget> _pages = [
    UserHome(),
    Message(),
    Settings(),
    Account(),
  ];

  void _navigationBottomBar(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navigationBottomBar,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
          ]),
    );
  }
}