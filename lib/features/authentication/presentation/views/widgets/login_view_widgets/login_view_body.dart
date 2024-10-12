import 'package:flutter/material.dart';
import 'login_frame.dart';
import 'logo.dart';
class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         ShagafLogo(),
         SizedBox(height: 32.75,),
         LoginFrame(),
      ],
    );
  }
}




