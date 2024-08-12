import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/blocks/home/screens/home_screen.dart';
import 'package:getx_learn/blocks/settings/screens/settings_screen.dart';
import '../../../components/bottom_tab_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomTabController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                Navigator(
                  key: Get.nestedKey(0),
                  onGenerateRoute: (routeSettings) {
                    return MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    );
                  },
                ),
                Navigator(
                  key: Get.nestedKey(1),
                  onGenerateRoute: (routeSettings) {
                    return MaterialPageRoute(
                      builder: (context) => const SettingsScreen(),
                    );
                  },
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
            ],
          ),
        );
      },
    );
  }
}
