import 'package:flutter/material.dart';

import '../../../core/cores.dart';

class BotaoPrincipal extends StatelessWidget {
  const BotaoPrincipal({
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
          color: Cores.buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            texto,
            style: TextStyle(
              color: Cores.textButtonColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
