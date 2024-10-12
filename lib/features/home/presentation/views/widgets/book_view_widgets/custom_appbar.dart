import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.notifications_none),
        Text(title, style: Styles.textStyle16),
        Icon(Icons.filter_list_sharp),
      ],
    );
  }
}
