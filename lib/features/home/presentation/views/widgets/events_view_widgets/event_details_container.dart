import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shaghaf/constatnts.dart';
import 'package:shaghaf/core/utils/appRouter.dart';

import '../../../../../../core/utils/styles.dart';
import '../rooms_view_widgets/amenity_row_widget.dart';
class EventDetailsContainer extends StatefulWidget {
  const EventDetailsContainer({super.key});

  @override
  State<EventDetailsContainer> createState() => _EventDetailsContainerState();
}

class _EventDetailsContainerState extends State<EventDetailsContainer> {
  String? plan = '200.0 EGP/Person' ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 350),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'Details',
                        style: Styles.textStyle18.copyWith(color: Colors.red,fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Text(
                  'We will learn how to make ceramics and use them after that',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 32),
                Text(
                  'The workshop will last for one day and last 3 hours. We will learn about it',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 32),
                Text(
                  'We will learn about the types of clay to differentiate the final result of the product',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 32),
                Text(
                  'How do I make shapes with clay without them cracking?',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 32),
                Text(
                  'We will burn the shapes we made and find out how they burn so that you can use them after that and live with you',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 60,),

              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 7,
                  blurRadius: 4,
                  offset: Offset(3, 3),
                ),
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showMaterialModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return StatefulBuilder(
                            builder: (BuildContext context, StateSetter setModalState) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                                ),
                                height: 300,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 24, left: 24, top: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Select Your Plan', style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold)),
                                      RadioListTile(
                                        activeColor: Colors.red,
                                        title: AmenityRow(icon: Icons.access_time, text: '60.0 EGP/Hour'),
                                        value: '60.0 EGP/Hour',
                                        groupValue: plan,
                                        onChanged: (val) {
                                          setModalState(() {
                                            plan = val;
                                          });
                                          setState(() {}); // To update the outer widget
                                        },
                                      ),
                                      RadioListTile(
                                        activeColor: Colors.red,
                                        title: AmenityRow(icon: Icons.calendar_today_outlined, text: '500.0 EGP/Day'),
                                        value: '500.0 EGP/Day',
                                        groupValue: plan,
                                        onChanged: (val) {
                                          setModalState(() {
                                            plan = val;
                                          });
                                          setState(() {}); // To update the outer widget
                                        },
                                      ),
                                      RadioListTile(
                                        activeColor: Colors.red,
                                        title: AmenityRow(icon: Icons.date_range_rounded, text: '8,000.0 EGP/Month'),
                                        value: '8,000.0 EGP/Month',
                                        groupValue: plan,
                                        onChanged: (val) {
                                          setModalState(() {
                                            plan = val;
                                          });
                                          setState(() {}); // To update the outer widget
                                        },
                                      ),
                                      SizedBox(height: 30),
                                      Center(
                                        child: SizedBox(
                                          width: 342,
                                          height: 40,
                                          child: TextButton(
                                            onPressed: () {
                                              GoRouter.of(context).push(Approuter.dateTimeViewRoute);

                                            },
                                            style: ButtonStyle(backgroundColor: WidgetStateProperty.all(KgreenColor)),
                                            child: Text(
                                              'Book Now',
                                              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                            '$plan',
                            style: Styles.textStyle16.copyWith(color: Colors.red,fontWeight: FontWeight.w700)
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).push(Approuter.dateTimeViewRoute);

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text('Book Now',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700,color: Colors.white),),
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );

  }
}