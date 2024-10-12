import 'package:go_router/go_router.dart';
import 'package:shaghaf/features/authentication/presentation/views/forget_password_view.dart';
import 'package:shaghaf/features/authentication/presentation/views/login_view.dart';
import 'package:shaghaf/features/authentication/presentation/views/signup_view.dart';
import 'package:shaghaf/features/authentication/presentation/views/verify_view.dart';
import 'package:shaghaf/features/home/presentation/views/book_view.dart';
import 'package:shaghaf/features/home/presentation/views/booking_review_view.dart';
import 'package:shaghaf/features/home/presentation/views/date_time_view.dart';
import 'package:shaghaf/features/home/presentation/views/event_details_view.dart';
import 'package:shaghaf/features/home/presentation/views/home_fetures_view.dart';
import 'package:shaghaf/features/home/presentation/views/home_view.dart';
import 'package:shaghaf/features/home/presentation/views/offers_view.dart';
import 'package:shaghaf/features/home/presentation/views/orders_view.dart';
import 'package:shaghaf/features/home/presentation/views/room_details_view.dart';

import '../../features/home/presentation/views/events_view.dart';
import '../../features/home/presentation/views/rooms_view.dart';
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
  static const roomsViewRoute = '/roomView';
  static const roomDetailsViewRoute = '/roomDetailsView';
  static const dateTimeViewRoute = '/dateTimeView';
  static const bookingReviewRoute = '/bookingReviewView';
  static const bookViewRoute = '/bookView';
  static const homeFeaturesRoute = '/homeFeaturesView';
  static const offersViewRoute = '/offersViewView';
  static const eventsViewRoute = '/eventsViewView';
  static const ordersViewRoute = '/ordersViewView';
  static const eventsViewDetailsRoute = '/eventsDetailsView';

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
      GoRoute(
        path: roomsViewRoute,
        builder: (context, state) => RoomsView(),
      ),
      GoRoute(
        path: dateTimeViewRoute,
        builder: (context, state) => DateTimeView(),
      ),
      GoRoute(
        path: bookingReviewRoute,
        builder: (context, state) => BookingReviewView(),
      ),
      GoRoute(
        path: homeFeaturesRoute,
        builder: (context, state){
          final word = state.extra as String;
          return HomeFeturesView(word: word,);
          }
      ),
      GoRoute(
        path: bookViewRoute,
        builder: (context, state) => BookView(),
      ),
      GoRoute(
        path: offersViewRoute,
        builder: (context, state) => OffersView(),
      ),
      GoRoute(
        path: eventsViewRoute,
        builder: (context, state) => EventsView(),
      ),
      GoRoute(
        path: ordersViewRoute,
        builder: (context, state) => OrdersView(),
      ),
      GoRoute(
        path: eventsViewDetailsRoute,
        builder: (context, state) => EventDetailsView(),
      ),
      GoRoute(
        path: roomDetailsViewRoute,
        builder: (context, state){
          final String roomName = state.extra as String;
          return RoomDetailsView(roomName: roomName);
        }
      ),
    ],
  );
}
