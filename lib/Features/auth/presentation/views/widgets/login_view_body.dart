import 'package:ecommerce_app/Features/auth/presentation/views/sign_up_view.dart';
import 'package:ecommerce_app/Features/auth/presentation/views/widgets/custom_text_button_auth.dart';
import 'package:ecommerce_app/Features/auth/presentation/views/widgets/or_divider.dart';
import 'package:ecommerce_app/core/utils/app_colors.dart';
import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_row_text.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: ' كلمة السر',
              inputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
            SizedBox(height: 16),

            GestureDetector(
              onTap: () {},
              child: Row(
                mainAxisAlignment: .end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 33),
            CustomButton(text: 'تسجيل دخول', onPressed: () {}),
            SizedBox(height: 33),
            CustomRowText(
              fristText: 'ليس لديك حساب؟',
              lastText: 'قم بإنشاء حساب',
              onTap: () {
                Navigator.pushNamed(context, SignUpView.routeName);
              },
            ),
            SizedBox(height: 33),
            OrDivider(),
            SizedBox(height: 33),
            CustomTextButtonAuth(
              onPressed: () {},
              textTitle: 'تسجيل بواسطة جوجل',
              assetName: 'assets/images/google.svg',
            ),
            SizedBox(height: 16),
            CustomTextButtonAuth(
              onPressed: () {},
              textTitle: 'تسجيل بواسطة أبل',
              assetName: 'assets/images/apple.svg',
            ),
            SizedBox(height: 16),
            CustomTextButtonAuth(
              onPressed: () {},
              textTitle: 'تسجيل بواسطة فيسبوك',
              assetName: 'assets/images/facebook.svg',
            ),
          ],
        ),
      ),
    );
  }
}
