import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_gao/app/pages/home/widgets/cabecalho/menu_text_item.dart';

class SegundoCabecalho extends StatelessWidget {
  const SegundoCabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MenuTextItem(texto: 'Home', onTap: () {}),
          const Gap(20),
          MenuTextItem(texto: 'Sobre', onTap: () {}),
          const Gap(20),
          MenuTextItem(texto: 'Contato', onTap: () {}),
        ],
      ),
    );
  }
}
