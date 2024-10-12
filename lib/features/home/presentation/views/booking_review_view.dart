import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/booking_review_view_widgets/booking_review_body.dart';
class BookingReviewView extends StatelessWidget {
  const BookingReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Booking Review',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),),
        centerTitle: true,
        leading: CustomBackArrow(),
      ),
      backgroundColor: Color(0xffF0F0F0),
      body: BookingReviewBody(),
    );
  }
}
