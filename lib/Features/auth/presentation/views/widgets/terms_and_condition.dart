import 'package:ecommerce_app/Features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(),
        SizedBox(width: 16),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على',
                  style: AppTextStyles.semiBold16.copyWith(
                    color: AppColors.fourthColor,
                  ),
                ),
                TextSpan(
                  text: ' الشروط والأحكام الخاصة بنا',
                  style: AppTextStyles.semiBold16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
