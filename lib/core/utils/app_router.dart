import 'package:go_router/go_router.dart';
import 'package:kemetvision/features/Splash/presentaion/splashView.dart';

abstract class AppRouter {
  static const String initialRoute = '/';
  static const String splashView = 'splash';
  static const String homeRoute = '/home';
  

  static final router = GoRouter(

      routes: [
       
           GoRoute(
        path: '/',
        builder: (context, state) => const Splashview(),
      ),


        ]);
    
  

}