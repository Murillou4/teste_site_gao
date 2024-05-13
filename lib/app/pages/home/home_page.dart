import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../core/app_colors.dart';
import 'widgets/main_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_image.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(180),
          Text(
            'Comprometida com o sucesso da sua empresa.',
            style: TextStyle(
              color: AppColors.textBackgroundColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Contabilidade de um jeito simples',
            style: TextStyle(
              color: AppColors.textBackgroundColor,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(20),
          MainButton(texto: 'Contratar', onTap: () {}),
        ],
      ),
    );
  }
}
