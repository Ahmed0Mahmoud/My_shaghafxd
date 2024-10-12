import 'package:flutter/material.dart';

import '../../../../../../constatnts.dart';
import '../../../../../../core/utils/styles.dart';

class CustomRedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const CustomRedButton({
    super.key, required this.title, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: Styles.textStyle16.copyWith(color: Colors.white),textAlign: TextAlign.center,
      ),
      color: KredColor,
      height: 48,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
