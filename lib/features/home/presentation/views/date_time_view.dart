import 'package:flutter/material.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/date_time_view_widgets/date_time_view_body.dart';
class DateTimeView extends StatelessWidget {
  const DateTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DateTimeViewBody(),
    );
  }
}
