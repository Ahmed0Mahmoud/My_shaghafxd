import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/verify_view_widgets/verify_view_body.dart';
class VerifyView extends StatelessWidget {
  const VerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: VerifyViewBody(),
    );
  }
}
