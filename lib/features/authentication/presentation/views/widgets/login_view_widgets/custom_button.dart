import 'package:flutter/material.dart';

import '../../../../../../constatnts.dart';
import '../../../../../../core/utils/styles.dart';

class CustomGreenButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomGreenButton({
    super.key, required this.title, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: KgreenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        title,
        style: Styles.textStyle14.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
