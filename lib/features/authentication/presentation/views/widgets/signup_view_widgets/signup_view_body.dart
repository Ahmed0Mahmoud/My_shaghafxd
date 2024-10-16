import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/signup_view_widgets/signup_frame.dart';

import '../login_view_widgets/logo.dart';
class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ShagafLogo(),
        SizedBox(height: 32.75),
        SignupFrame(),
      ],
    );
  }
}
