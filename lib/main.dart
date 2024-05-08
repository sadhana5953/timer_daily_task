// ElevatedButton
// OutlinedButton
// FloatingActionButton
// TextButton

import 'package:flutter/material.dart';
import 'package:timer_daily_task/clockApp/clock%20app/analog%20clock/analog%20watch.dart';
import 'package:timer_daily_task/clockApp/clock%20app/clock/strap%20watch.dart';
import 'package:timer_daily_task/clockApp/clock%20app/digital%20clock/digital%20watch.dart';
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
        '/': (context) => strapWatch(),
        '/analogue':(context) => analogue(),
        '/strapWatch':(context) => strapWatch(),
        '/home':(context) => homePage(),
      },
    );
  }
}
