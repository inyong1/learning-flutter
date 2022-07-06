import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sync_fution_date_picker.dart';

class SyncFutionPage extends StatelessWidget {
  const SyncFutionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sync Fution'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text("Date range picker"),
              onTap: _showDatePicker,
            )
          ],
        ));
  }

  void _showDatePicker() {
    Get.dialog(const SyncFutionDatePicker());
  }
}
