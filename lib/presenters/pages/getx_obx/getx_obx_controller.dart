
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxObxController extends GetxController {
  final listChat = <String>[].obs;
  final textController = TextEditingController();

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }

  void sendMessage() {
    if (textController.text.isEmpty) return;
    listChat.add(textController.text);
    textController.text = "";
  }
}
