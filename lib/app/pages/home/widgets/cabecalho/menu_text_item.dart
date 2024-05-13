import 'package:flutter/material.dart';

import '../../../../core/app_colors.dart';

class MenuTextItem extends StatelessWidget {
  const MenuTextItem({
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
      child: Text(
        texto,
        style: TextStyle(
          color: AppColors.textBackgroundColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
