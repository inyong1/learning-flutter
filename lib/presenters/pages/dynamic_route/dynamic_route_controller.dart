import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/pages/dynamic_route/item.dart';
import 'package:learning_flutter/presenters/pages/dynamic_route/item_list_page.dart';


class DynamicRouteControler extends GetxController{

  final itemObs = Rxn<Item>();

  @override
  void onReady() {
    super.onReady();
    debugPrint("Onready");
    String? itemId = Get.parameters['item'];
    if (itemId != null) {
      itemObs.value = itemList.firstWhere((element) => element.id == itemId);
    }

  }
}