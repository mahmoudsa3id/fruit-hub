import 'package:ecommerce_app/Features/auth/presentation/cubits/cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/Features/auth/presentation/views/login_view.dart';
import 'package:ecommerce_app/Features/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:ecommerce_app/core/widgets/custom_button.dart';
import 'package:ecommerce_app/core/widgets/custom_row_text.dart';
import 'package:ecommerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'الاسم كامل',
              inputType: TextInputType.name,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              inputType: TextInputType.visiblePassword,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.remove_red_eye),
              ),
            ),
            SizedBox(height: 16),
            TermsAndCondition(),
            SizedBox(height: 43),
            CustomButton(text: ' انشاء حساب جديد', onPressed: () {
             
            }),
            SizedBox(height: 26),
            CustomRowText(
              fristText: 'تمتلك حساب بالفعل؟',
              lastText: 'تسجيل دخول',
              onTap: () {
                Navigator.pushReplacementNamed(context, LoginView.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
