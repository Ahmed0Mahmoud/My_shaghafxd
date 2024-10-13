import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/constatnts.dart';

import '../../../../../../core/utils/appRouter.dart';
import '../../../../../../core/utils/styles.dart';
import 'clippers.dart';

class ClipPathes extends StatelessWidget {
  const ClipPathes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: (){
            GoRouter.of(context).push(Approuter.roomsViewRoute);
          },
          child: ClipPath(
            clipper: RoomsClip(),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: const Color(0xff20473E).withOpacity(.65),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left: 30.0,right: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Rooms",style: Styles.textStyle24.copyWith(
                      color: Colors.white,
                    ),),
                    const Spacer(),
                    const Image(image: AssetImage("assets/Game day-amico 2.png")),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Rooms
        Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    GoRouter.of(context).push(Approuter.ordersViewRoute);
                  },
                  child: ClipPath(
                    clipper: OrdersClip(),
                    child: Container(
                      width: 163,
                      height: 200,
                      decoration: BoxDecoration(
                          color: KredColor.withOpacity(.65),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding:  EdgeInsets.only(top: 56.0,left: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Orders",style: Styles.textStyle18.copyWith(
                              color: Colors.white,
                            ),),
                            Image(image: AssetImage('assets/Ecommerce web page-amico 1.png'),width: 115,height: 115,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //Orders
               // const Spacer(),
                InkWell(
                  onTap: (){
                    GoRouter.of(context).push(Approuter.eventsViewRoute);
                  },
                  child: ClipPath(
                    clipper: EventsClip(),
                    child: Container(
                      width: 163,
                      height: 200,
                      decoration: BoxDecoration(
                          color: const Color(0xffFFCC0A).withOpacity(.65),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding:  EdgeInsets.only(top: 56.0,right: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Events",style: Styles.textStyle18.copyWith(
                              color: Colors.white,
                            ),),
                            Image(image: AssetImage('assets/Prototyping process-amico (1) 3.png'),width: 115,height: 115,),
                          ],
                        ),
                      ),                  ),
                  ),
                ),  //Events
              ],
            ),
          ],
        ),
      ],
    );
  }
}


