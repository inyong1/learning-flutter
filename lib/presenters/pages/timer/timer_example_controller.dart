import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../getx_obx/getx_obx_controller.dart';

class TimerExampleController extends GetxController {
  final timerObs = "--:--".obs;
  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    const time1 = "07:07";
    const time2 = "12:07";
    final DateFormat format = DateFormat("HH:mm");
    final DateTime dateTime1 = format.parse(time1);
    final DateTime dateTime2 = format.parse(time2);
    Duration dur = dateTime2.difference(dateTime1);
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      final detik = "${dur.inSeconds % 60}".padLeft(2, "0");
      final menit = "${dur.inMinutes % 60}".padLeft(2, "0");
      timerObs.value = "${dur.inHours}:$menit:$detik";
      dur = Duration(seconds: dur.inSeconds - 1);
      if (dur.inSeconds <=0) {
        t.cancel();
      }
    });
  }

  @override
  void onClose() {
    _timer.cancel();
    super.onClose();
  }
}