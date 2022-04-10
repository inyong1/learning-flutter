import 'package:flutter/cupertino.dart';
import 'package:async/async.dart';
import 'package:get/get.dart';

class HideOnScrollController extends GetxController {
  /// flag show or hide
  final Rx<bool> showObs = Rx(true);

  /// scroll detection
  final scrollController = ScrollController();

  /// timer to re-show again
  late final _restartableTime = RestartableTimer(
    const Duration(seconds: 1),
    () => showObs.value = true,
  );

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      ///hide on scroll started
      showObs.value = false;
      /// show again after a period of time
      /// if no scrolling occured
      _restartableTime.reset();
    });
  }

  @override
  void onClose() {
    /// dont forget to dispose
    scrollController.dispose();
    _restartableTime.cancel();
    super.onClose();
  }
}
