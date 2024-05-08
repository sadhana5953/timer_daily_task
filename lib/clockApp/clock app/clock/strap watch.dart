import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:timer_daily_task/clockApp/digital%20clock/clock.dart';

class strapWatch extends StatefulWidget {
  const strapWatch({super.key});

  @override
  State<strapWatch> createState() => _strapWatchState();
}

class _strapWatchState extends State<strapWatch> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dateTime = DateTime.now();
        switch (dateTime.weekday) {
          case 1:
            day = 'Mon';
            break;
          case 2:
            day = 'Tue';
            break;
          case 3:
            day = 'Wed';
            break;
          case 4:
            day = 'Thu';
            break;
          case 5:
            day = 'Fri';
            break;
          case 6:
            day = 'Sat';
            break;
          case 7:
            day = 'Sun';
            break;
        }

        switch (dateTime.month) {
          case 1:
            month = 'January';
            break;
          case 2:
            month = 'February';
            break;
          case 3:
            month = 'March';
            break;
          case 4:
            month = 'April';
            break;
          case 5:
            month = 'May';
            break;
          case 6:
            month = 'June';
            break;
          case 7:
            month = 'July';
            break;
          case 8:
            month = 'Agust';
            break;
          case 9:
            month = 'September';
            break;
          case 10:
            month = 'October';
            break;
          case 11:
            month = 'November';
            break;
          case 12:
            month = 'December';
            break;
        }
      });
    });
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              image: AssetImage("assets/image/clock3.jpeg"), fit: BoxFit.cover),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 180,
              width: 180,
              child: CircularProgressIndicator(
                color: Colors.white,
                value: dateTime.second / 60,
              ),
            ),
            SizedBox(
              height: 170,
              width: 170,
              child: CircularProgressIndicator(
                color: Colors.blue,
                value: dateTime.minute / 60,
              ),
            ),
            SizedBox(
              height: 150,
              width: 150,
              child: Column(children: [
                Text("$day",style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.w500),),
                Text("${month} ${dateTime.day}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                Text("${dateTime.hour % 12}:${dateTime.minute}",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),)
              ],),
            )
          ],
        ),
      ),
    );
  }
}
