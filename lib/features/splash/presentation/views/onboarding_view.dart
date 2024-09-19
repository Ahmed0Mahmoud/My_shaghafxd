import 'package:flutter/material.dart';
import 'package:shaghaf/features/splash/presentation/views/widgets/onboarding_view_widgets/onboarding_view_body.dart';
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff146356),
      body: OnboardingViewBody(),
    );
  }
}
