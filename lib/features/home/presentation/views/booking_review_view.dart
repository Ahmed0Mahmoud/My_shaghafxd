import 'package:flutter/material.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/booking_review_view_widgets/booking_review_body.dart';
class BookingReviewView extends StatelessWidget {
  const BookingReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Color(0xffF0F0F0),
      body: BookingReviewBody(),
    );
  }
}
