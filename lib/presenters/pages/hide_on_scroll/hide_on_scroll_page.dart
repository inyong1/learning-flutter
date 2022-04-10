import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/pages/hide_on_scroll/hide_on_scroll_controller.dart';

class HideOnScrollPage extends GetView<HideOnScrollController> {
  const HideOnScrollPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hide On Scroll'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          ListView(
            controller: controller.scrollController,
            children: Colors.primaries
                .map((e) => Container(height: 150, color: e))
                .toList(),
          ),
          Obx(() {
            return Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedContainer(
                curve: Curves.ease,
                transform: Matrix4.translationValues(
                    0, controller.showObs.value ? 0 : 150, 0),
                duration: const Duration(milliseconds: 500),
                width: 200,
                height: 150,
                color: Colors.black,
                margin: const EdgeInsets.only(bottom: 20),
              ),
            );
          })
        ],
      ),
    );
  }
}
