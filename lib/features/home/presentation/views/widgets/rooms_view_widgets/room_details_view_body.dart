import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/home_view_widgets/location_shape.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/rooms_view_widgets/room_details_container.dart';

class RoomDetailsViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
       SingleChildScrollView(
         physics: BouncingScrollPhysics(),
         child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'assets/Frame 1144.jpg', // Image path
                height: 454,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 59,
              right: 29,
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 27,
              ),
            ),
            Positioned(
              left: 20,
                top: 286,
                child: LocationShape(title: 'Roxy'),
            ),
            Positioned(
              top: 45,
                left: 7,
                child: CustomBackArrow()
            ),
            RoomDetailsContainer(),
          ],
               ),
       );

  }

}


