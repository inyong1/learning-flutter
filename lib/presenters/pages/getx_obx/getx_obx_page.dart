import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_obx_controller.dart';

class GetxObxPage extends GetView<GetxObxController> {
  const GetxObxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx Obx")),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(child: Obx(_buildListChat)),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: TextField(controller: controller.textController)),
                IconButton(
                    onPressed: controller.sendMessage, icon: Icon(Icons.send))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListChat() {
    return ListView(
      children: controller.listChat
          .map((element) => ListTile(title: Text(element)))
          .toList(),
    );
  }
}
