import 'package:flutter/material.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?) validator;
  final Widget? suffixIcon;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onFieldSubmitted;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.validator,
    this.suffixIcon,
    this.textInputAction = TextInputAction.done,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white10,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.white20),
      ),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: AppColors.white90),
        cursorColor: AppColors.accent,
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),
          labelText: labelText,
          labelStyle: const TextStyle(color: AppColors.white60),
          errorStyle: const TextStyle(color: AppColors.errorRed),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
