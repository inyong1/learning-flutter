import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/pages/keyboard_detection/keyboard_detection_controller.dart';

class KeyboardDetectionPage extends GetView<KeyboardDetectionController> {
  const KeyboardDetectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Keyboard Detection'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(
                () => Text(
                  "Keyboar visible: ${controller.keyboardShownObs.value}",
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const TextField()
            ],
          ),
        ));
  }
}
