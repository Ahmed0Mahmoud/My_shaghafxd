import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBackArrow extends StatelessWidget {
  const CustomBackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,right: 342),
      child: IconButton(onPressed: (){
        GoRouter.of(context).pop();
      }, icon: const Icon(Icons.keyboard_arrow_left_outlined,size: 40,)),
    );
  }
}
