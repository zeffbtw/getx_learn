import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/ui/primary_button.dart';

class BScreen extends StatelessWidget {
  const BScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: PrimaryButton(
          child: const Text('To C', style: TextStyle(color: Colors.white)),
          onPressed: () => Get.toNamed('/home/b/c'),
        ),
      ),
    );
  }
}
