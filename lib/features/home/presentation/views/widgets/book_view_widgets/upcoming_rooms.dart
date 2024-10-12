import 'package:flutter/material.dart';
import 'package:one_clock/one_clock.dart';

import 'UpcomingRoomDetailsCard.dart';

class UpcomingRooms extends StatelessWidget {
  const UpcomingRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topCenter,
          width:double.infinity,
          height: 329,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/rOOOOM.jpeg'),fit: BoxFit.fill)
          ),
          child: Column(
            children: [
              AnalogClock(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius:20 ,
                        spreadRadius: 0,
                        offset: Offset(10,10),
                        color: Colors.black.withOpacity(0.25),
                      ),
                      BoxShadow(
                        blurRadius: 20 ,
                        spreadRadius: 0,
                        offset: Offset(-10,-10),
                        color: Colors.white,
                      ),
                    ],
                    color: Colors.white,
                    shape: BoxShape.circle),
                width: 240,
                height: 240,
                isLive: true,
                hourHandColor: Colors.black,
                minuteHandColor: Colors.black,
                showSecondHand: true,
                numberColor: Colors.black87,
                showNumbers: true,
                showAllNumbers: true,
                textScaleFactor: 1.4,
                showTicks: true,
                showDigitalClock: false,
                datetime: DateTime.now(),

              ),
              SizedBox(height: 24,),
              DigitalClock(
                  showSeconds: true,
                  isLive:true,
                  digitalClockTextColor: Colors.white,
                  textScaleFactor: 1.5,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                datetime: DateTime.now(),

              ),
            ],
          )

        ),
        SizedBox(height: 12,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: UpcomingRoomDetailsCard(roomName: 'Training Room'),
        ),
      ],
    );
  }
}
