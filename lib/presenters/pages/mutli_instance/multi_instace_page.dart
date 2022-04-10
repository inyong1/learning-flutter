import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/app_routes.dart';
import 'package:learning_flutter/presenters/pages/mutli_instance/multi_instance_controller.dart';

class MultiInstacePage extends GetView<MultiInstanceController> {
  const MultiInstacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi Instance'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => Container(
                color: controller.selectedData.value.color,
                alignment: Alignment.center,
                child: Text("${controller.selectedData.value}"),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.grey,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: controller.dataList
                      .map((e) => InkWell(
                            onTap: () {
                              Get.to(
                                () => MultiInstacePage(),
                                binding: BindingsBuilder.put(
                                    () => MultiInstanceController(),
                                    tag: e.id),
                                arguments: e,
                              );
                            },
                            child: Container(
                              color: e.color,
                              width: 120,
                              height: 150,
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
