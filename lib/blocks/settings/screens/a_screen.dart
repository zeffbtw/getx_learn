import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_learn/blocks/settings/data/increment_controller.dart';

class AScreen extends StatelessWidget {
  const AScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          // вместо Navigator.popUntil
          onPressed: () => Get.until((route) => route.settings.name == '/'),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GetBuilder(
              init: IncrementController(),
              builder: (controller) => Text(controller.counter.toString()),
            ),
            IconButton(
              onPressed: () => Get.find<IncrementController>().increment(),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
