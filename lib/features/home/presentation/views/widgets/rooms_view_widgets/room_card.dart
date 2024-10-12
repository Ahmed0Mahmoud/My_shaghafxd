import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/core/utils/appRouter.dart';
import 'package:shaghaf/core/utils/styles.dart';
import 'package:shaghaf/features/home/presentation/views/widgets/home_view_widgets/rate_shape.dart';

class RoomCard extends StatelessWidget {
  final String imageUrl;
  final String roomName;
  final double rating;
  final VoidCallback onPressed;

  const RoomCard({super.key,
    required this.imageUrl,
    required this.roomName,
    required this.rating,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22,right: 22,bottom: 16),
      child: InkWell(
        onTap: (){
          GoRouter.of(context).push(Approuter.roomDetailsViewRoute,extra: roomName);
        },
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              width: 343,
              height: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image:
                  AssetImage(imageUrl),
                    fit: BoxFit.fill,
                  )
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 49,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(12),bottomLeft: Radius.circular(12)),
                ),

                child: Text(roomName,style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),
              ),
            ),
            Positioned(
                 top: 12,
                right: 14
                ,child: Icon(Icons.favorite_outlined,color: Colors.red,size: 28,)
            ),
            Positioned(
              bottom: 65,
              left: 8,
              child: RateShape(),
            ),

          ]
        ),
      ),
    );
  }
}