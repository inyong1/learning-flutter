import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/pages/getx_obx/getx_obx_controller.dart';

class Product {
  String id;
  Color color;

  Product(this.id, this.color);

  @override
  bool operator ==(Object other) {
    return other is Product &&
        other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

}

class MultiInstanceController extends GetxObxController {
  late final dataList =
      Colors.primaries.map((e) => Product(e.hashCode.toString(), e)).toList();
  late final selectedData = dataList[0].obs;

  @override
  void onInit() {
    super.onInit();
    selectedData.value = Get.arguments ?? dataList[0];
  }
}
