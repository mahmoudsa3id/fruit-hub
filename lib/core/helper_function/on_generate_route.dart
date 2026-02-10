import 'package:ecommerce_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:ecommerce_app/Features/auth/domain/repos/auth_repo.dart';
import 'package:ecommerce_app/Features/auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/Features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/Features/auth/presentation/views/sign_up_view.dart';
import 'package:ecommerce_app/Features/onBoarding/features/views/onboarding_view.dart';
import 'package:ecommerce_app/core/services/get_it_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case SignUpView.routeName:
      return MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => SignUpCubit(getIt.get<AuthRepo>()),
          child: SignUpView(),
        ),
      );
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardingView());
    default:
      return MaterialPageRoute(builder: (context) => Scaffold());
  }
}
