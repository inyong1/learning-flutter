import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RadioListtilePage extends StatelessWidget {
  RadioListtilePage({Key? key}) : super(key: key);

  final list = List.generate(5, (index) => index + 1);
  final selectedItem = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Listtile'),
      ),
      body: Obx(_buildList),
    );
  }

  Widget _buildList() {
    return ListView(
      children: list
          .map((e) => RadioListTile<int>(
              title: Text("Pilihan $e"),
              value: e,
              groupValue: selectedItem.value,
              onChanged: (v) {
                selectedItem.value = v ?? 1;
              }))
          .toList(),
    );
  }
}
