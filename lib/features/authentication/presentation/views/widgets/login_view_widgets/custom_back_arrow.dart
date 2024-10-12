import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackArrow extends StatelessWidget {
  const CustomBackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      GoRouter.of(context).pop();
    }, icon: const Icon(Icons.keyboard_arrow_left_outlined,size: 35,color: Color(0xff111111),));
  }
}
