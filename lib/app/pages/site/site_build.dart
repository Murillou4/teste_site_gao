import 'package:flutter/material.dart';
import 'package:site_gao/app/pages/home/home_page.dart';
import 'package:site_gao/app/pages/home/widgets/cabecalho/header.dart';
import 'package:site_gao/app/pages/home/widgets/cabecalho/sub_header.dart';
import 'package:site_gao/app/pages/site/widgets/scroll_down_button.dart';

import 'site_controller.dart';

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
        if (SiteController.instance.scrollController.offset >
            const Offset(0, 0).dy) {
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
                    firstChild: const Header(),
                    secondChild: const SubHeader(),
                    crossFadeState: value
                        ? CrossFadeState.showSecond
                        : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 200),
                  );
                }),
          ),
          const ScrollDownButton(),
        ],
      ),
    );
  }
}
