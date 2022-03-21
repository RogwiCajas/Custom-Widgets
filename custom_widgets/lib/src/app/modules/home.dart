import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WIDGETS'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: () => Get.toNamed('onboarding'),
                child: const Text('onboarding sample')),
            const Divider(),
            ElevatedButton(
                onPressed: () => Get.toNamed('samples'),
                child: const Text('dialog sample')),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
