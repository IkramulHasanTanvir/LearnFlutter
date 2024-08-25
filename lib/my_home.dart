import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  final myTextColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Hey! How are you?',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: myTextColor),
            ),

            const Text('Hey! How are you?'), // bodyMedium default

            Text(
              'Hey! How are you?',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
