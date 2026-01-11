import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({
    super.key,
    required this.fristText,
    required this.lastText,
    this.onTap,
  });
  final String fristText;
  final String lastText;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          fristText,
          style: AppTextStyles.semiBold16.copyWith(color: AppColors.fifthColor),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            lastText,
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
