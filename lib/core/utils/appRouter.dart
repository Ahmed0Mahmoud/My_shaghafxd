import 'package:go_router/go_router.dart';
import 'package:shaghaf/features/authentication/presentation/views/forget_password_view.dart';
import 'package:shaghaf/features/authentication/presentation/views/login_view.dart';
import 'package:shaghaf/features/authentication/presentation/views/signup_view.dart';
import 'package:shaghaf/features/authentication/presentation/views/verify_view.dart';
import 'package:shaghaf/features/home/presentation/views/home_view.dart';

import '../../features/splash/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';


abstract class Approuter {
  static const splashViewRoute = '/';
  static const onBoardingViewRoute = '/onBoardingview';
  static const loginViewRoute = '/loginView';
  static const signupViewRoute = '/signupView';
  static const forgetPasswordViewRoute = '/forgetPasswordView';
  static const verifyViewRoute = '/verifyView';
  static const homeViewRoute = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashViewRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoardingViewRoute,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: loginViewRoute,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: signupViewRoute,
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: forgetPasswordViewRoute,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: verifyViewRoute,
        builder: (context, state) => const VerifyView(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
