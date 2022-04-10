import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/pages/timer/timer_example_controller.dart';

class TimerExamplePage extends GetView<TimerExampleController> {
  const TimerExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer Example'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            controller.timerObs.value,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
