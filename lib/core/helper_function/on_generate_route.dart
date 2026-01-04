import 'package:ecommerce_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:ecommerce_app/Features/onBoarding/features/views/onboarding_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardingView());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
