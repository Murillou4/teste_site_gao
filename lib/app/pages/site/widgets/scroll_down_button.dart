import 'package:flutter/material.dart';
import 'package:site_gao/app/pages/site/site_controller.dart';

import '../../../core/app_colors.dart';

class ScrollDownButton extends StatelessWidget {
  const ScrollDownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        SiteController.instance.scrollController.animateTo(
          SiteController.instance.scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AppColors.textButtonColor,
            width: 1,
          ),
        ),
        child: Icon(
          Icons.keyboard_arrow_down_sharp,
          color: AppColors.textButtonColor,
          weight: 1,
        ),
      ),
    );
  }
}
