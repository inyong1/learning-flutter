import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldInBottomSheetPage extends StatelessWidget {
  const TextFieldInBottomSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text Field In Bottomsheet"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => Get.bottomSheet(const MyBottomSheet()),
            child: const Text("Tampilkan Bottomsheet"),
          ),
        ));
  }
}

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          color: Colors.amber[100],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("My Bottomsheet"),
              TextField(),
            ],
          )),
    );
  }
}
