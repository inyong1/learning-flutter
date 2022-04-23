import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/pages/widget_bolong/path_bolong.dart';

class WidgetBolongPage extends StatelessWidget {
  const WidgetBolongPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Widget Bolong Example'),
          actions: [
            IconButton(
                onPressed: () {
                  Get.bottomSheet(
                    ClipPath(
                      clipper: PathBolong(),
                      child: Container(color: Colors.white),
                    ),
                    isScrollControlled: true,
                    barrierColor: Colors.transparent,
                  );
                },
                icon: const Icon(Icons.camera))
          ],
        ),
        body: Stack(fit: StackFit.expand, children: [
          ListView(
            children: Colors.primaries
                .map((e) => Container(
                      height: 100,
                      color: e,
                    ))
                .toList(),
          ),
          Center(
            child: Container(
              width: 296,
              height: 48,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 3),
              ),
              foregroundDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: ElevatedButton(
                child: Text("test"),
                onPressed: () {},
              ),
            ),
          )
        ]));
  }
}
