import 'package:flutter/material.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/events_view_widgets/events_view_body.dart';
class EventsView extends StatelessWidget {
  const EventsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EventsViewBody(),
    );
  }
}
