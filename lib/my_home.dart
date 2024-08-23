import 'package:flutter/material.dart';
import 'package:learn_flutter/tabs/account_tab.dart';
import 'package:learn_flutter/tabs/home_tab.dart';
import 'package:learn_flutter/tabs/settings_tab.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[300],
          title:const Text('T A B B A R'),
        ),
        body: Column(
          children: [
            TabBar(
              labelColor: Colors.deepPurple[300],
                unselectedLabelColor: Colors.deepPurple[300],
                tabs:const  [
              Tab(
                icon: Icon(
                  Icons.home,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                ),
              ),
            ]),

            const Expanded(
              child: TabBarView(children: [
                HomeTab(),
                SettingsTab(),
                AccountTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
