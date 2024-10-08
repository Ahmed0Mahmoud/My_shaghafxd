import 'package:flutter/material.dart';
import 'custom_back_arrow.dart';
import 'login_frame.dart';
import 'logo.dart';
class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         Padding(
           padding: const EdgeInsets.only(right: 342),
           child: CustomBackArrow(),
         ),
         SizedBox(height: 36,),
         ShagafLogo(),
         SizedBox(height: 32.75,),
         LoginFrame(),
      ],
    );
  }
}




