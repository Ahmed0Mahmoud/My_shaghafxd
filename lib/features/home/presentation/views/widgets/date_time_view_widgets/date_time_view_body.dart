import 'package:flutter/material.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/date_time_view_widgets/process_button.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/date_time_view_widgets/time_picker_field.dart';

import 'date_picker.dart';
class DateTimeViewBody extends StatefulWidget {
  const DateTimeViewBody({super.key});

  @override
  State<DateTimeViewBody> createState() => _DateTimeViewBodyState();
}

class _DateTimeViewBodyState extends State<DateTimeViewBody> {
  TimeOfDay _fromTime = const TimeOfDay(hour: 7, minute: 1);
  TimeOfDay _toTime = const TimeOfDay(hour: 9, minute: 30);
  int _seats = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 104),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomBackArrow(),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text('Select date and time',
                    style: Styles.textStyle17.copyWith(
                        fontWeight: FontWeight.w500),),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12,),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12),
            child: DatePicker(),
          ),
          const SizedBox(height: 16,),
          Column(
            children: [
              TimePickerField(
                title: 'From:',
                selectedTime: _fromTime,
                onTimePicked: (time) {
                  setState(() {
                    _fromTime = time;
                  });
                },
              ),
              const SizedBox(height: 16,),
              TimePickerField(
                title: 'To:',
                selectedTime: _toTime,
                onTimePicked: (time) {
                  setState(() {
                    _toTime = time;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  spreadRadius:0,
                  blurRadius: 4,
                  offset: const Offset(0 , 1),
                  color: Colors.black.withOpacity(.25),
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.account_circle_outlined,size: 27,),
                      SizedBox(width: 9,),
                      Text('Number of seats',style: Styles.textStyle16,),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove_circle_outline,size: 27,),
                        onPressed: () {
                          setState(() {
                            if (_seats > 1) _seats--;
                          });
                        },
                      ),
                      Text('$_seats',style: Styles.textStyle16,),
                      IconButton(
                        icon: const Icon(Icons.add_circle_outline,size: 27,),
                        onPressed: () {
                          setState(() {
                            _seats++;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 90),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: ProcessButton(),
          )
        ],
    );
  }
}





