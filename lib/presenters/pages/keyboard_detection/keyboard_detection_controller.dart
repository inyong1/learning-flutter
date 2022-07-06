import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class KeyboardDetectionController extends GetxController
    with WidgetsBindingObserver {
  final keyboardShownObs = false.obs;

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void onClose() {
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    final double inset = WidgetsBinding.instance.window.viewInsets.bottom;
    keyboardShownObs.value = inset != 0.0;
  }
}
