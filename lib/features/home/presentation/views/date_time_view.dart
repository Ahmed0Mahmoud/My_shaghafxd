import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/date_time_view_widgets/date_time_view_body.dart';

import '../../../../core/utils/styles.dart';
class DateTimeView extends StatelessWidget {
  const DateTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Select date and time', style: Styles.textStyle17.copyWith(fontWeight: FontWeight.w500),),
         centerTitle: true,
        leading: CustomBackArrow(),
      ),
      body: DateTimeViewBody(),
    );
  }
}
