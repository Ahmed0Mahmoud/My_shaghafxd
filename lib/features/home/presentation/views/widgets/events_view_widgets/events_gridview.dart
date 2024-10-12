import 'package:flutter/material.dart';

import 'event_card.dart';

class EventsGridview extends StatelessWidget {
  const EventsGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.92,

      ),
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return EventCard();
        },
        childCount: 10,

      ),
    );
  }
}
