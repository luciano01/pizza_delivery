import 'package:flutter/material.dart';

import '../../core.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.focusNode,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon,
    this.onTapSuffixIcon,
    this.obscureText,
    required this.textInputType,
    required this.textEditingController,
    required this.validator,
    required this.onChanged,
  });

  final FocusNode focusNode;

  final String label;

  final IconData prefixIcon;

  final IconData? suffixIcon;

  final VoidCallback? onTapSuffixIcon;

  final bool? obscureText;

  final TextInputType textInputType;

  final TextEditingController textEditingController;

  final String? Function(String?)? validator;

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      focusNode: focusNode,
      cursorColor: AppColors.defaultText,
      obscureText: obscureText ?? false,
      keyboardType: textInputType,
      style: AppTextStyles.labelTextField.copyWith(
        color: AppColors.defaultText,
      ),
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColors.grey,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColors.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColors.defaultText,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide(
            color: AppColors.pizzaRed,
          ),
        ),
        errorMaxLines: 2,
        filled: true,
        fillColor: AppColors.white,
        prefixIcon: Icon(
          prefixIcon,
          color: focusNode.hasFocus ? AppColors.defaultText : AppColors.grey,
        ),
        suffixIcon: suffixIcon != null
            ? GestureDetector(
                onTap: onTapSuffixIcon,
                child: Icon(
                  suffixIcon,
                  color: focusNode.hasFocus
                      ? AppColors.defaultText
                      : AppColors.grey,
                ),
              )
            : null,
        label: Text(
          label,
          style: AppTextStyles.labelTextField.copyWith(
            color: focusNode.hasFocus ? AppColors.defaultText : AppColors.grey,
          ),
        ),
      ),
    );
  }
}
