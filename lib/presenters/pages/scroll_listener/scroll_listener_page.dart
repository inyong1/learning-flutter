import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/pages/scroll_listener/scroll_listener_controller.dart';

class ScrollListenerPage extends GetView<ScrollListenerController> {
  const ScrollListenerPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Scroll Listener Example')),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(10),
                controller: controller.scrollController,
                children: [
                  ...Colors.primaries
                      .map((e) => Container(height: 100, color: e))
                      .toList(),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Magic Button")),
                  ),
                  Container(
                    height: 200,
                    color: Colors.black26,
                    child: const Text("Konten lain"),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            Obx(_buildMagicButton)
          ],
        ));
  }

  Widget _buildMagicButton() {
    return controller.showMagicButtonObs.value
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Magic Button")),
          )
        : const SizedBox.shrink();
  }
}
