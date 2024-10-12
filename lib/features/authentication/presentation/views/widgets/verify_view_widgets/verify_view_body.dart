import 'package:flutter/material.dart';
import 'package:shaghaf/features/authentication/presentation/views/widgets/verify_view_widgets/verify_frame.dart';
import '../login_view_widgets/logo.dart';
class VerifyViewBody extends StatelessWidget {
  const VerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ShagafLogo(),
        SizedBox(height: 32.75,),
        VerifyFrame(),
      ],
    );
  }
}




