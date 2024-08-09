import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: () => Get.toNamed('/settings'),
          child: const Text("To settings"),
        ),
      ),
    );
  }
}
