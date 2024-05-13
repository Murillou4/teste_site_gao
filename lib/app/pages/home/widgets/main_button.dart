import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.texto,
    required this.onTap,
  });
  final String texto;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 143,
        height: 46,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            texto,
            style: TextStyle(
              color: AppColors.textButtonColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
