// ElevatedButton
// OutlinedButton
// FloatingActionButton
// TextButton

import 'package:flutter/material.dart';
import 'package:timer_daily_task/clockApp/digital%20clock/clock.dart';
import 'package:timer_daily_task/flutter%20button/buttons.dart';

void main() {
  return runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => digitalClock(),
        '/home':(context) => homePage(),
      },
    );
  }
}
