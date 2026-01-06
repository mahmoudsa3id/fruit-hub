import 'package:ecommerce_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:ecommerce_app/Features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/Features/onBoarding/features/views/onboarding_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardingView());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
