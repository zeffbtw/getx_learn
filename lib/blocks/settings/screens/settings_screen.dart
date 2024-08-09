import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/blocks/main/data/theme_service.dart';
import 'package:getx_learn/ui/neumorphic_button.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // вместо Navigator.pop в getx
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 12),
            NeumorphicButton(
              onPressed: () => Get.find<ThemeService>().toRedTheme(),
              child: const Text(
                "Red theme",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            NeumorphicButton(
              onPressed: () => Get.find<ThemeService>().toBlueTheme(),
              child: const Text(
                "Blue theme",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            NeumorphicButton(
              onPressed: () => Get.find<ThemeService>().swithDarkTheme(),
              child: const Text(
                "Dark theme",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            NeumorphicButton(
              onPressed: () => Get.toNamed('/settings/a'),
              child: const Text(
                "Go to A",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
