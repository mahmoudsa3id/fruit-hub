import 'package:ecommerce_app/Features/onBoarding/features/views/widgets/page_view_item.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class OnboardingBodyPageView extends StatelessWidget {
  const OnboardingBodyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
          image: Assets.imagesPageViewItem1Image,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          backgroundImage: Assets.imagesPageViewItem1Backgroundimage,
          title: Row(
            children: [Text('مرحبًا بك في '), Text('Fruit'), Text('HUB')],
          ),
        ),
      ],
    );
  }
}
