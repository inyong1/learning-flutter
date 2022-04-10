import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WrapContentDialogPage extends StatelessWidget {
  const WrapContentDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Wrap Content Dialog'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text("show dialog"),
            onPressed: () {
              Get.dialog(
                const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ));
  }
}
