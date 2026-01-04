import 'package:ecommerce_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:ecommerce_app/core/helper_function/on_generate_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FruitApp());
}

class FruitApp extends StatelessWidget {
  const FruitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
