import 'package:flutter/material.dart';
import 'package:site_gao/app/pages/home/home_page.dart';
import 'package:site_gao/app/pages/site/site_build.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: const SiteBuild(),
    );
  }
}
