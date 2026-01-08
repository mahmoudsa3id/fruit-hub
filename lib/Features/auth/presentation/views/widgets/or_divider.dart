import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: const Color(0xFFDCDEDE))),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('أو', style: AppTextStyles.semiBold16),
          ),
        ),
        Expanded(child: Divider(color: const Color(0xFFDCDEDE))),
      ],
    );
  }
}
