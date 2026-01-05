import 'package:ecommerce_app/Features/onBoarding/features/views/widgets/onboarding_body_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Expanded(child: const OnboardingBodyPageView())]);
  }
}
