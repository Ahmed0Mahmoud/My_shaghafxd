import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/constatnts.dart';

import '../../../../../../core/utils/appRouter.dart';
import '../../../../../../core/utils/styles.dart';

class HomeViewClipPathes extends StatelessWidget {
  const HomeViewClipPathes({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: (){
            GoRouter.of(context).push(Approuter.roomsViewRoute);
          },
          child: ClipPath(
            clipper: ContainerClipper1(),
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
                ClipPath(
                  clipper: ContainerClipper2(),
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
                //Orders
               // const Spacer(),
                InkWell(
                  onTap: (){
                    //GoRouter.of(context).push(AppRouter.kEventsView);
                  },
                  child: ClipPath(
                    clipper: ContainerClipper3(),
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

class ContainerClipper1 extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.lineTo(0, size.height * .75);
    path.lineTo(size.width * .5, size.height);
    path.lineTo(size.width, size.height * .75);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class ContainerClipper2 extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.moveTo(0, size.height * .1);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .35);
    path.lineTo(0, size.height * .1);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class ContainerClipper3 extends CustomClipper<Path> {
  var path = Path();

  @override
  getClip(Size size) {
    path.moveTo(0, size.height * .35);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * .1);
    path.lineTo(0, size.height * .35);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
