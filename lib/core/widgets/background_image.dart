import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    this.divider = 1.0,
    this.opacity = 0.1,
  });

  final double? divider;

  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Image.asset(
        AppImages.background,
        width: context.width,
        height: context.height / divider!,
        fit: BoxFit.cover,
      ),
    );
  }
}
