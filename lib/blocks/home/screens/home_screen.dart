import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/blocks/home/screens/b_screen.dart';

import 'package:getx_learn/ui/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PrimaryButton(
          child: const Text('To B', style: TextStyle(color: Colors.white)),
          onPressed: () => Get.to(const BScreen(), id: 2),
        ),
      ),
    );
  }
}
