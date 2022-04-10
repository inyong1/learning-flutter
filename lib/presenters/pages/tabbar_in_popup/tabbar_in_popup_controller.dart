import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabbarInPopupController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 2, vsync: this);

  TabController get tabController => _tabController;

  @override
  void onClose() {
    _tabController.dispose();
    super.onClose();
  }
}
