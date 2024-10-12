import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/login_view_body.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackArrow(),
      ),
      resizeToAvoidBottomInset: false,
      body: LoginViewBody(),
    );
  }
}
