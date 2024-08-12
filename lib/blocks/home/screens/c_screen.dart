import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/components/bottom_tab_controller.dart';
import 'package:getx_learn/ui/primary_button.dart';

class CScreen extends StatelessWidget {
  const CScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: PrimaryButton(
          child: const Text('To Settings', style: TextStyle(color: Colors.white)),
          onPressed: () => Get.find<BottomTabController>().changeTabIndex(1),
        ),
      ),
    );
  }
}
