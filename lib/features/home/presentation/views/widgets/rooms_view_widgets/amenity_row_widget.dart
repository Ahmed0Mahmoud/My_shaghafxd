import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';

class AmenityRow extends StatelessWidget {
  const AmenityRow({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.red),
          SizedBox(width: 10),
          Expanded(child: Text(text,style: Styles.textStyle16,)),

        ],
      ),
    );
  }
}
