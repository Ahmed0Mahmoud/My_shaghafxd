import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/rooms_view_widgets/room_card.dart';
class RoomsViewBody extends StatelessWidget {
  const RoomsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 12),
            physics: BouncingScrollPhysics(),
            children: [
              RoomCard(
                imageUrl: 'assets/trainningRoom.jpg',
                roomName: 'Training room',
                rating: 4.7,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   //MaterialPageRoute(builder: (context) => RoomDetailsScreen()),
                  // );
                },
              ),
              RoomCard(
                imageUrl: 'assets/funnyRoom.jpg',
                roomName: 'Funny room',
                rating: 4.7,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //  // MaterialPageRoute(builder: (context) => RoomDetailsScreen()),
                  //);
                },
              ),
              RoomCard(
                imageUrl: 'assets/meetingRoom.jpg',
                roomName: 'Meeting room',
                rating: 4.7,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //  // MaterialPageRoute(builder: (context) => RoomDetailsScreen()),
                  //);
                },
              ),
              RoomCard(
                imageUrl: 'assets/eatingRoom.jpg',
                roomName: 'Eating room',
                rating: 4.7,
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //  // MaterialPageRoute(builder: (context) => RoomDetailsScreen()),
                  //);
                },
              ),

            ],
          ),
        ),
      ],
    );
  }
}
