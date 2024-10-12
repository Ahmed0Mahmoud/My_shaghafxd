import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/forget_password_widgets/forget_password_view_body.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/login_view_widgets/custom_back_arrow.dart';
class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackArrow(),
      ),
      resizeToAvoidBottomInset: false,
      body: ForgetPasswordViewBody(),
    );
  }
}
