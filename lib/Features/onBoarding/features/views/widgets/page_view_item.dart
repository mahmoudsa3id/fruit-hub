import 'package:ecommerce_app/Features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.subtitle,
    required this.backgroundImage,
    required this.title,
    required this.isVisible,
  });
  final String image, subtitle, backgroundImage;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),

              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        LoginView.routeName,
                      );
                    },
                    child: Text(
                      'تخط',
                      style: AppTextStyles.regular13.copyWith(
                        color: AppColors.fourthColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Text(
            subtitle,
            textAlign: .center,
            style: AppTextStyles.semiBold13.copyWith(
              color: AppColors.thirdColor,
            ),
          ),
        ),
      ],
    );
  }
}
