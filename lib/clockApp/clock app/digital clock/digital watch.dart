import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer_daily_task/clockApp/digital%20clock/clock.dart';
class DigitalClock extends StatefulWidget {
  const DigitalClock({super.key});

  @override
  State<DigitalClock> createState() => _DigitalClockState();
}

class _DigitalClockState extends State<DigitalClock> {
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
              image: AssetImage("assets/image/Clock.webp"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '\n\n${dateTime.hour % 12}:${dateTime.minute}:${dateTime.second}',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 50)),
                  TextSpan(
                      text: '${(dateTime.hour > 12 ? (' pm\n') : (' am\n'))}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  TextSpan(
                      text: '   ${day}, ${month} ${dateTime.day}\n\n\n\n\n\n\n\n\n',
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500)),
                ])),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/analogue');
              },
              child: Container(
                height: 50,
                width: 200,
                margin: EdgeInsets.only(top: 300),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border:  Border.all(color:Colors.white,width: 2),
                  gradient: LinearGradient(colors: [Colors.black12,
                    Color(0xFFD38C73),],),
                ),
                alignment: Alignment.center,
                child: Text("Analogue",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
