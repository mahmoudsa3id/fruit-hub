import 'package:ecommerce_app/Features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:ecommerce_app/core/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'تسجيل دخول'),
      body: LoginViewBody(),
    );
  }
}
