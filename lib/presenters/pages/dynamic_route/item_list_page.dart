import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/app_routes.dart';
import 'package:learning_flutter/presenters/pages/dynamic_route/item.dart';

final itemList = Colors.primaries.map((e) =>
    Item(
      color: e,
      name: e.value.toString(),
      id: e.value.toString(),
      description: e.toString(),
    ));

class ItemListPage extends StatelessWidget {
  const ItemListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Item List'),
        ),
        body: ListView(
          children: itemList
              .map(
                (e) =>
                ListTile(
                  title: Text(
                    e.name,
                    style: TextStyle(color: e.color),
                  ),
                  onTap: () {
                    Get.toNamed("${AppRoutes.dynamicRoute}/${e.id}");
                  },
                ),
          )
              .toList(),
        ));
  }
}
