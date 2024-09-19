import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/signup_view_widgets/signup_view_body.dart';
class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignupViewBody(),
    );
  }
}
