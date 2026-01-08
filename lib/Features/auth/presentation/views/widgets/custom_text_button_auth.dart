import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomTextButtonAuth extends StatelessWidget {
  const CustomTextButtonAuth({
    super.key,
    this.onPressed,
    required this.textTitle,
    required this.assetName,
  });
  final void Function()? onPressed;
  final String textTitle;
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFDCDEDE), width: 1),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(assetName, height: 20, width: 20),
          title: Text(
            textAlign: .center,
            textTitle,
            style: AppTextStyles.semiBold16.copyWith(
              color: const Color(0xFF0C0D0D),
            ),
          ),
        ),
      ),
    );
  }
}
