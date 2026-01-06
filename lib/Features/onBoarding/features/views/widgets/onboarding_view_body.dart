import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/Features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/Features/onBoarding/features/views/widgets/onboarding_body_page_view.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    super.initState();

    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingBodyPageView(pageController: pageController)),
        DotsIndicator(
          animate: true,
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5),
          ),
        ),
        SizedBox(height: 23),
        Visibility(
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          visible: currentPage == 1 ? true : false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kHorizentalPadding),
            child: CustomButton(
              text: 'إبدا الأن',
              onPressed: () {
                Navigator.pushReplacementNamed(context, LoginView.routeName);
              },
            ),
          ),
        ),
        SizedBox(height: 43),
      ],
    );
  }
}
