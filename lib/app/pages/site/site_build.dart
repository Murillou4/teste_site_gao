import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:site_gao/app/pages/home/home_page.dart';
import 'package:site_gao/app/pages/home/widgets/cabecalho/cabecalho.dart';
import 'package:site_gao/app/pages/home/widgets/cabecalho/segundo_cabecalho.dart';

import 'site_controller.dart';
import 'widgets/go_down_button.dart';

class SiteBuild extends StatefulWidget {
  const SiteBuild({super.key});

  @override
  State<SiteBuild> createState() => _SiteBuildState();
}

class _SiteBuildState extends State<SiteBuild> {
  @override
  Widget build(BuildContext context) {
    SiteController.instance.scrollController.addListener(() {
      setState(() {
        //verificar se está no topo
        if (SiteController.instance.scrollController.offset > Offset(0, 0).dy) {
          SiteController.instance.changeIsScrolling(true);
        } else {
          SiteController.instance.changeIsScrolling(false);
        }
      });
    });
    return Scaffold(
      body: SingleChildScrollView(
        controller: SiteController.instance.scrollController,
        child: ListView(
          shrinkWrap: true,
          children: [
            const HomePage(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: ValueListenableBuilder(
                valueListenable: SiteController.instance.isScrolling,
                builder: (context, value, child) {
                  return AnimatedCrossFade(
                    firstChild: const Cabecalho(),
                    secondChild: const SegundoCabecalho(),
                    crossFadeState: value
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 200),
                  );
                }),
          ),
          const GoDownButton(),
        ],
      ),
    );
  }
}
