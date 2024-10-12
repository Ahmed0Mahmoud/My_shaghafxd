import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/core/utils/appRouter.dart';

import '../../../../../../constatnts.dart';
import '../../../../../../core/utils/styles.dart';

class ProcessButton extends StatefulWidget {

  const ProcessButton({
    super.key,
  });

  @override
  State<ProcessButton> createState() => _ProcessButtonState();
}

class _ProcessButtonState extends State<ProcessButton> {
  Color color = KgreenColor;

  String title = 'Complete';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: TextButton(
          onPressed: (){
            setState(() {
              title = 'Loading...';
              color = const Color(0xff919393);
              GoRouter.of(context).push(Approuter.bookingReviewRoute);
            });
          },
          style: TextButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(title,style: Styles.textStyle16.copyWith(color: Colors.white),
          )
      ),
    );
  }
}