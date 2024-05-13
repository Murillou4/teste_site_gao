import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_gao/app/pages/home/widgets/cabecalho/menu_text_item.dart';

import '../../../../core/cores.dart';

class Cabecalho extends StatelessWidget {
  const Cabecalho({super.key});

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
              color: Cores.textBackgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ],
      ),
    );
  }
}
