import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/login_view_body.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginViewBody(),
    );
  }
}
