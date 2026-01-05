import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.subtitle,
    required this.backgroundImage,
    required this.title,
  });
  final String image, subtitle, backgroundImage;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  Assets.imagesPageViewItem1Backgroundimage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: SvgPicture.asset(Assets.imagesPageViewItem1Image),
              ),
              Padding(padding: const EdgeInsets.all(16.0), child: Text('تخط')),
            ],
          ),
        ),
      ],
    );
  }
}
