import 'package:flutter/material.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/rooms_view_widgets/rooms_view_body.dart';
class RoomsView extends StatelessWidget {
  const RoomsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RoomsViewBody(),
    );
  }
}
