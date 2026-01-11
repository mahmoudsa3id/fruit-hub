import 'package:ecommerce_app/Features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:ecommerce_app/core/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'حساب جديد'),
      body: SignUpViewBody(),
    );
  }
}
