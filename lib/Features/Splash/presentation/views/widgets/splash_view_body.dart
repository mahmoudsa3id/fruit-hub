import 'package:ecommerce_app/Features/onBoarding/features/views/onboarding_view.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .stretch,
      children: [
        Row(
          crossAxisAlignment: .start,
          children: [SvgPicture.asset(Assets.imagesTopSplash)],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesBottomSplash, fit: .fill),
      ],
    );
  }

  void executeNavigation() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, OnboardingView.routeName);
  }
}
