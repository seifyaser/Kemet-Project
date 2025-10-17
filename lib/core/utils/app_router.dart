import 'package:go_router/go_router.dart';
import 'package:kemetvision/features/OnBoardingScreen/presentation/views/onboardingScreen.dart';
import 'package:kemetvision/features/WelcomeScreen/Presentation/views/WelcomeScreen.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String splashView = 'splash';
  static const String homeRoute = '/home';
  static const String welcomeRoute = '/started';
  static const String onBoardingRoute = '/onboarding';
  

  static final router = GoRouter(

      routes: [
       
      //      GoRoute(
      //   path: '/',
      //   builder: (context, state) => const Splashview(),
      // ),
     
     GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),

      GoRoute(
        path: '/started',
        builder: (context, state) => const WelcomeScreen(),
      ),

        ]);
    
  

}