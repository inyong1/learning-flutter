import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_flutter/presenters/pages/base_get_view.dart';
import 'package:learning_flutter/presenters/pages/tabbar_in_popup/tabbar_in_popup_controller.dart';

class TabbarInPopupPage extends BaseGetView<TabbarInPopupController> {
  const TabbarInPopupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabbar In Popup"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("SHOW POPUP"),
          onPressed: _showPopup,
        ),
      ),
    );
  }

  void _showPopup() {
    Get.dialog(AlertDialog(
      content: Container(
        width: 1,height: 200,color: Colors.blue,
        child: TabBarView(controller: controller.tabController, children: [
          Container(color:Colors.greenAccent,child: Text("halaman 1")),
          Container(color:Colors.purpleAccent,child: Text("halaman 2")),
        ],),
      ),
    ));

  }
}
