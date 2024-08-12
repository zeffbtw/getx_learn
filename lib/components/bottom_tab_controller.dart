import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomTabController extends GetxController {
  int tabIndex = 0;

  List<GlobalKey<NavigatorState>> navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  void changeTabIndex(int index) {
    if (tabIndex == index) {
      Get.until((route) => route.isFirst);
    } else {
      tabIndex = index;
      update();
    }
  }
}
