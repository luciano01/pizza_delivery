import 'package:flutter/material.dart';

import '../../core.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({
    super.key,
    this.backgroundColor,
    this.foregroundColor,
    required this.onPressed,
    this.elevation = 2.0,
    this.borderColor,
    required this.icon,
    this.size = 56.0,
  });

  final Color? backgroundColor;

  final Color? foregroundColor;

  final VoidCallback onPressed;

  final double elevation;

  final Color? borderColor;

  final IconData icon;

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: size,
          height: size,
          child: IconButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? AppColors.white,
              foregroundColor: foregroundColor ?? AppColors.white,
              textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: borderColor ?? Colors.transparent),
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: elevation,
            ),
            onPressed: onPressed,
            icon: Icon(icon),
          ),
        ),
      ],
    );
  }
}
