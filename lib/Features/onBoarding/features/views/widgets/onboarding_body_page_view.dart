import 'package:ecommerce_app/Features/onBoarding/features/views/widgets/page_view_item.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingBodyPageView extends StatelessWidget {
  const OnboardingBodyPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          // (pageController.hasClients ? pageController.page!.round() : 0) ==
          // 0,
          image: Assets.imagesPageViewItem1Image,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          backgroundImage: Assets.imagesPageViewItem1Backgroundimage,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('مرحبًا بك في ', style: AppTextStyles.bold23),
              Text(
                'HUB',
                style: AppTextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Text(
                'Fruit',
                style: AppTextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        PageViewItem(
          image: Assets.imagesPageViewItem2Image,
          subtitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          backgroundImage: Assets.imagesPageViewItem2Backgroundimage,
          title: Text('ابحث وتسوق', style: AppTextStyles.bold23),

          isVisible: false,
          // (pageController.hasClients ? pageController.page!.round() : 0) !=
          // 1,
        ),
      ],
    );
  }
}
