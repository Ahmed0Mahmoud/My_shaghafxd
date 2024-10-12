import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/forget_password_widgets/forget_password_frame.dart';
import '../login_view_widgets/logo.dart';
class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ShagafLogo(),
        SizedBox(height: 32.75,),
        ForgetPasswordFrame(),
      ],
    );
  }
}




