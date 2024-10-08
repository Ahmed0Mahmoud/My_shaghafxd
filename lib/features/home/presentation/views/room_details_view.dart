import 'package:flutter/material.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/rooms_view_widgets/room_details_view_body.dart';
class RoomDetailsView extends StatelessWidget {
  final String roomName;
  const RoomDetailsView({super.key, required this.roomName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RoomDetailsViewBody(),
    );
  }
}
