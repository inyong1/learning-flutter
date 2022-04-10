import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ScrollListenerController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final showMagicButtonObs = true.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_myScrollListener);
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void _myScrollListener() {
    showMagicButtonObs.value = scrollController.offset <
        scrollController.position.maxScrollExtent - 300;
  }
}
