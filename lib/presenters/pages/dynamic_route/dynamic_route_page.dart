import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/app_routes.dart';
import 'package:learning_flutter/presenters/pages/dynamic_route/dynamic_route_controller.dart';
import 'package:learning_flutter/presenters/pages/dynamic_route/item_list_page.dart';

import 'item.dart';

class DynamicRoutePage extends GetView<DynamicRouteControler> {
  const DynamicRoutePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic Route'),
      ),
      body: Obx(() {
        final Item? item = controller.itemObs.value;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: item?.color ?? Colors.black,
                ),
                Text(item?.name ?? "unknown")
              ],
            )),
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: itemList
                    .map(
                      (e) => InkWell(
                          onTap: (){
                            Get.toNamed("${AppRoutes.dynamicRoute}/${e.id}");
        },
                          child:
                              Container(width: 60, height: 60, color: e.color)),
                    )
                    .toList(),
              ),
            )
          ],
        );
      }),
    );
  }
}
