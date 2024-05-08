import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:timer_daily_task/clockApp/digital%20clock/clock.dart';
class analogue extends StatefulWidget {
  const analogue({super.key});

  @override
  State<analogue> createState() => _analogueState();
}

class _analogueState extends State<analogue> {
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

    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              image: AssetImage("assets/image/clock.jpeg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: '\n\n${dateTime.hour % 12}:${dateTime.minute}',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 50)),
                  TextSpan(
                      text: '${(dateTime.hour > 12 ? (' pm\n') : (' am\n'))}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                  TextSpan(
                      text: '   ${day}, ${month} ${dateTime.day}',
                      style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500)),
                ])),
            Container(
              height: 200,
              width: 200,
              margin: EdgeInsets.only(top: 40),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 5),
                  shape: BoxShape.circle
              ),
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white),
                    shape: BoxShape.circle),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ...List.generate(
                        60,
                            (index) => Transform.rotate(
                          angle: ((index + 1) * 6 * pi) / 180,
                          child: ((index + 1) % 5 == 0)
                              ? VerticalDivider(
                            thickness: 4,
                            color: Colors.red,
                            indent: 160,
                          )
                              : VerticalDivider(
                            thickness: 3,
                            color: Colors.white,
                            indent: 165,
                          ),
                        )),
                    Transform.rotate(
                      angle: (dateTime.second * 6 * pi) / 180,
                      child: VerticalDivider(
                        color: Colors.red,
                        thickness: 3,
                        endIndent: 65,
                        indent: 22,
                      ),
                    ),
                    Transform.rotate(
                      angle: (dateTime.minute * 6 * pi) / 180,
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 3,
                        endIndent: 65,
                        indent: 30,
                      ),
                    ),
                    Transform.rotate(
                      angle: (dateTime.hour % 12 + dateTime.minute / 60) * 30 * (pi / 180),
                      child: VerticalDivider(
                        color: Colors.white,
                        thickness: 4,
                        endIndent: 65,
                        indent: 40,
                      ),
                    ),
                    Container(
                      height: 13,
                      width: 13,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed('/strapWatch');
              },
              child: Container(
                height: 50,
                width: 200,
                margin: EdgeInsets.only(top: 250),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border:  Border.all(color:Colors.white,width: 2),
                  gradient: LinearGradient(colors: [Colors.black12,
                    Color(0xFF33373A),],),
                ),
                alignment: Alignment.center,
                child: Text("Strap Watch",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
