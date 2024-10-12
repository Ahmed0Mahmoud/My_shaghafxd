import 'package:flutter/material.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/book_view_widgets/past_rooms.dart';
class PastContainer extends StatelessWidget {
  const PastContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius:4 ,
                  spreadRadius:0,
                  offset: Offset(0,4),
                  color: Color(0xff000040).withOpacity(0.25),
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 14),
              child: PastRoomDetailsCard(roomName: 'Training Room'),
            ),
          ),
          SizedBox(height: 16,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius:4 ,
                    spreadRadius:0,
                    offset: Offset(0,4),
                    color: Color(0xff000040).withOpacity(0.25),
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 14),
              child: PastRoomDetailsCard(roomName: 'Meeting Room'),
            ),
          ),
          SizedBox(height: 16,),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius:4 ,
                    spreadRadius:0,
                    offset: Offset(0,4),
                    color: Color(0xff000040).withOpacity(0.25),
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 14),
              child: PastRoomDetailsCard(roomName: 'Funny Room'),
            ),
          ),
          SizedBox(height: 26,),
        ],
      ),
    );

  }
}

