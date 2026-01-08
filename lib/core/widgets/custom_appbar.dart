import 'package:ecommerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back_ios_new),
    ),
    centerTitle: true,
    title: Text(title, style: AppTextStyles.bold19),
  );
}
