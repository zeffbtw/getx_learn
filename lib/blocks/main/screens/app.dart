import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/blocks/main/screens/main_screen.dart';
import 'package:getx_learn/blocks/settings/screens/a_screen.dart';
import 'package:getx_learn/blocks/settings/screens/settings_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MainScreen()),
        GetPage(
          name: '/settings',
          page: () => const SettingsScreen(),
          children: [
            GetPage(name: '/a', page: () => const AScreen()),
          ],
        ),
      ],
    );
  }
}
