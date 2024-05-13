import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/app_colors.dart';
import 'menu_text_item.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 110,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
              ),
              Row(
                children: [
                  MenuTextItem(
                    texto: 'Home',
                    onTap: () {},
                  ),
                  const Gap(20),
                  MenuTextItem(
                    texto: 'Sobre',
                    onTap: () {},
                  ),
                  const Gap(20),
                  MenuTextItem(
                    texto: 'Contato',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 2,
            decoration: BoxDecoration(
              color: AppColors.textBackgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
