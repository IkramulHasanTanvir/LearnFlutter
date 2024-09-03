import 'package:flutter/material.dart';
import 'package:learn_flutter/timeOfDay/am_pm.dart';
import 'package:learn_flutter/timeOfDay/hours.dart';
import 'package:learn_flutter/timeOfDay/minutes.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late FixedExtentScrollController _hoursController;
  late FixedExtentScrollController _minutesController;
  late FixedExtentScrollController _amPmController;

  @override
  void initState() {
    super.initState();
    _hoursController = FixedExtentScrollController();
    _minutesController = FixedExtentScrollController();
    _amPmController = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //hours wheel
              SizedBox(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  controller: _hoursController,
                  perspective: 0.01,
                  diameterRatio: 1.2,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 50,
                  childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 13,
                      builder: (context, index) {
                        return Hours(hours: index);
                      }),
                ),
              ),

              Text(
                ':',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  letterSpacing: -18,
                ),
              ),

              //minutes wheel
              SizedBox(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  controller: _minutesController,
                  perspective: 0.01,
                  diameterRatio: 1.2,
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 50,
                  childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 60,
                      builder: (context, index) {
                        return Minutes(minutes: index);
                      }),
                ),
              ),

              //amPm wheel
              SizedBox(
                width: 70,
                child: ListWheelScrollView.useDelegate(
                  controller: _amPmController,
                  itemExtent: 50,
                  perspective: 0.01,
                  diameterRatio: 1.2,
                  physics: const FixedExtentScrollPhysics(),
                  childDelegate: ListWheelChildBuilderDelegate(
                      childCount: 2,
                      builder: (context, index) {
                        if (index == 0) {
                          return const AmPm(isItAm: true);
                        }
                        return const AmPm(isItAm: false);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _hoursController;
    _minutesController;
    _amPmController;
  }
}
