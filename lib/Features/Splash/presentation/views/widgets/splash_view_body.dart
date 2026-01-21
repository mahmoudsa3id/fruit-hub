import 'package:ecommerce_app/Features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/Features/onBoarding/features/views/onboarding_view.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/core/services/shared_pref_singelton.dart';
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
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .spaceBetween,
      crossAxisAlignment: .stretch,
      children: [
        Row(
          mainAxisAlignment: .end,
          children: [SvgPicture.asset(Assets.imagesTopSplash)],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesBottomSplash, fit: .fill),
      ],
    );
  }

  void executeNavigation() {
    bool onBoardingSeen = SharedPreferencesSingleton.getBool(kOnBoardingSeen);

    Future.delayed(Duration(seconds: 3), () {
      if (onBoardingSeen) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      }
    });
  }
}
