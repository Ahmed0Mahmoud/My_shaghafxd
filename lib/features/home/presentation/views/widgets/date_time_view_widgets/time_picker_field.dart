import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';

class TimePickerField extends StatelessWidget {
  final String title;
  final TimeOfDay selectedTime;
  final ValueChanged<TimeOfDay> onTimePicked;

  const TimePickerField({super.key,
    required this.title,
    required this.selectedTime,
    required this.onTimePicked,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,style: Styles.textStyle17.copyWith(fontWeight: FontWeight.w500)),
        const SizedBox(height: 13,),
        GestureDetector(
          onTap: () async {
            TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: selectedTime,
            );
            if (pickedTime != null) {
              onTimePicked(pickedTime);
            }
          },
          child: Text(
            selectedTime.format(context),
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
