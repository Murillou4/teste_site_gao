import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:site_gao/app/core/cores.dart';
import 'package:site_gao/app/pages/home/widgets/botao_principal.dart';
import 'package:site_gao/app/pages/home/widgets/cabecalho/cabecalho.dart';

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
          Gap(180),
          Text(
            'Comprometida com o sucesso da sua empresa.',
            style: TextStyle(
              color: Cores.textBackgroundColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Contabilidade de um jeito simples',
            style: TextStyle(
              color: Cores.textBackgroundColor,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(20),
          BotaoPrincipal(texto: 'Contratar', onTap: () {}),
        ],
      ),
    );
  }
}
