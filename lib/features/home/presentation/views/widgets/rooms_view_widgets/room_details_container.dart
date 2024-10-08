import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shaghaf/constatnts.dart';
import 'package:shaghaf/core/utils/appRouter.dart';

import '../../../../../../core/utils/styles.dart';
import 'amenity_row_widget.dart';
class RoomDetailsContainer extends StatefulWidget {
  const RoomDetailsContainer({super.key});

  @override
  State<RoomDetailsContainer> createState() => _RoomDetailsContainerState();
}

class _RoomDetailsContainerState extends State<RoomDetailsContainer> {
  String? plan = '60.0 EGP/Hour' ;

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
                        'Training Room',
                        style: Styles.textStyle18.copyWith(color: Colors.red,fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Icon(Icons.chair_outlined, color: Colors.red),
                    SizedBox(width: 4),
                    Text('30 Seats',style: Styles.textStyle14,),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                    'Amenities',
                    style: Styles.textStyle18.copyWith(color: Colors.red,fontWeight: FontWeight.bold)
                ),
                SizedBox(height: 10),
                const Column(
                  children: [
                    AmenityRow(icon: Icons.print, text:'Printer, Scanner and photocopier'),
                    AmenityRow(icon: Icons.wifi, text:'Wi-fi'),
                    AmenityRow(icon: Icons.local_cafe, text: 'Free coffee'),
                    AmenityRow(icon: Icons.videocam, text:'Video Conf'),
                    AmenityRow(icon: Icons.tv, text: 'LED screen'),
                  ],
                ),
                SizedBox(height: 20),
                // Location section
                Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.red,),
                    Text(
                        'Location',
                        style: Styles.textStyle18.copyWith(color: Colors.red,fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 146,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/mapSample.jpg'),fit: BoxFit.fill)
                  ),
                ),
                SizedBox(height: 16,),

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
                                            child: Text(
                                              'Select Date',
                                              style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
                                            ),
                                            style: ButtonStyle(backgroundColor: WidgetStateProperty.all(KgreenColor)),
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
                    child: Text('Select Date',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700,color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
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