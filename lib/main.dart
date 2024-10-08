import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/components/bottom_tab_controller.dart';
import 'package:getx_learn/components/theme_service.dart';
import 'package:getx_learn/blocks/main/screens/app.dart';

void main() {
  Get.put(ThemeService());
  Get.put(BottomTabController());
  runApp(const App());
}
