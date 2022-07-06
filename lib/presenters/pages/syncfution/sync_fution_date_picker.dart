import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SyncFutionDatePicker extends StatelessWidget {
  const SyncFutionDatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
      content: SizedBox(
          width: 200,
          height: 250,
          child: SfDateRangePicker(
            selectionMode: DateRangePickerSelectionMode.single,
            showNavigationArrow: true,
            // showTodayButton: true,
            rangeSelectionColor: Colors.purpleAccent,
            showActionButtons: true,
            onCancel: () => Get.back(),
          )),
    );
  }
}
