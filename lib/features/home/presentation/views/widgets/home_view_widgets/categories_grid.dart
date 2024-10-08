import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shaghaf/core/utils/appRouter.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          InkWell(
              onTap: (){
                GoRouter.of(context).push(Approuter.roomsViewRoute);
              },
              child: Image(image: AssetImage('assets/rooms.png'),width: 342,height: 200,)),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
                child: const Image(image: AssetImage('assets/orders.png'), width: 163, height: 200,)),
            InkWell(
              onTap: (){},
                child: const Image(image: AssetImage('assets/events.png'), width: 163, height: 200,)),

          ],
        ),
      ],
    );
  }
}
