import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Flutter"),
      ),
      body: ListView(padding: const EdgeInsets.all(10), children: [
        ListTile(
          title: const Text("Sync Fution"),
          onTap: () => Get.toNamed(AppRoutes.syncFution),
        ),
        ListTile(
          title: const Text("And logic"),
          onTap: () => Get.toNamed(AppRoutes.andLogic),
        ),
        ListTile(
          title: const Text("Sine Wave"),
          onTap: () => Get.toNamed(AppRoutes.sineWave),
        ),
        ListTile(
          title: const Text("Widget Bolong"),
          onTap: () => Get.toNamed(AppRoutes.widgetBolong),
        ),
        ListTile(
          title: const Text("Intrinsic Height"),
          onTap: () => Get.toNamed(AppRoutes.intrinsicheight),
        ),
        ListTile(
          title: const Text("Keyboard detection"),
          onTap: () => Get.toNamed(AppRoutes.keyboardDetection),
        ),
        ListTile(
          title: const Text("Hide on scroll"),
          onTap: () => Get.toNamed(AppRoutes.hideOnScroll),
        ),
        ListTile(
          title: const Text("Circle color"),
          onTap: () => Get.toNamed(AppRoutes.circleColor),
        ),
        ListTile(
          title: const Text("Item List"),
          onTap: () => Get.toNamed(AppRoutes.itemList),
        ),
        ListTile(
          title: const Text("Wrap Content Dialog"),
          onTap: () => Get.toNamed(AppRoutes.wrapcontentDialog),
        ),
        ListTile(
          title: const Text("Load more"),
          onTap: () => Get.toNamed(AppRoutes.loadmore),
        ),
        ListTile(
          title: const Text("Scroll Listener"),
          onTap: () => Get.toNamed(AppRoutes.scrollListener),
        ),
        ListTile(
          title: const Text("Timer"),
          onTap: () => Get.toNamed(AppRoutes.timer),
        ),
        ListTile(
          title: const Text("Multi Instance"),
          onTap: () => Get.toNamed(AppRoutes.multiInstance),
        ),
        ListTile(
          title: const Text("Radio Listtile"),
          onTap: () => Get.toNamed(AppRoutes.radioListtile),
        ),
        ListTile(
          title: const Text("TextSpan"),
          onTap: () => Get.toNamed(AppRoutes.textSpan),
        ),
        ListTile(
          title: const Text("Webview"),
          onTap: () => Get.toNamed(AppRoutes.webview),
        ),
        ListTile(
          title: const Text("TextField In Bottomsheet"),
          onTap: () => Get.toNamed(AppRoutes.textFieldInBottomsheet),
        ),
        ListTile(
          title: const Text("Getx Obx"),
          onTap: () => Get.toNamed(AppRoutes.getxObx),
        ),
        ListTile(
          title: const Text("Tabbar in popup"),
          onTap: () => Get.toNamed(AppRoutes.tabbarInPopup),
        ),
      ]),
    );
  }
}
