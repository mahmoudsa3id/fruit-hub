import 'package:ecommerce_app/Features/auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:ecommerce_app/Features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:ecommerce_app/core/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const routeName = 'signUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'حساب جديد'),
      body: Builder(
        builder: (context) {
          return BlocConsumer<SignUpCubit, SignUpState>(
            listener: (context, state) {},
            builder: (context, state) {
              return SignUpViewBody();
            },
          );
        },
      ),
    );
  }
}
