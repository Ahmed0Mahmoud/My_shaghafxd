import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import '../../../../../../constatnts.dart';
import '../../../../../../core/utils/styles.dart';
import 'dart:math' as math;


class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper:OvalBottomBorderClipper(),
          child: Container(
            width: 342,
            height: 200,
            decoration: BoxDecoration(
              color: KgreenColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 39,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Rooms',style: Styles.textStyle24.copyWith(color: Colors.white),),
                  Image(image: AssetImage('assets/Game day-amico 2.png')),

                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi), // Reflects the widget horizontally
              child: ClipPath(
                clipper: RoundedDiagonalPathClipper(),
                child: Container(
                  width: 163,
                  height: 200,
                  decoration: BoxDecoration(
                    color: KredColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6,top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Orders',style: Styles.textStyle18.copyWith(color: Colors.white),),
                            ],
                          ),
                          Image(image: AssetImage('assets/Ecommerce web page-amico 1.png')),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper:RoundedDiagonalPathClipper(),
              child: Container(
                width: 163,
                height: 200,
                decoration: BoxDecoration(
                  color: KyellowColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 7,top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Events',style: Styles.textStyle20.copyWith(color: Colors.white),),
                      Image(image: AssetImage('assets/Prototyping process-amico (1) 3.png')),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
