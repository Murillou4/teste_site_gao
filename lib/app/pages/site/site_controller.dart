import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SiteController {
  static final SiteController instance = SiteController();
  ScrollController scrollController = ScrollController();
  
  ValueNotifier<bool> isScrolling = ValueNotifier(false);

  changeIsScrolling(bool value) {
    isScrolling.value = value;
  }
  

}
