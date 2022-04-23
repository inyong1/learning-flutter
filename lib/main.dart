import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:learning_flutter/presenters/app_pages..dart';
import 'package:learning_flutter/presenters/app_routes.dart';

StreamController broadCaster = StreamController.broadcast();
ValueNotifier notifier = ValueNotifier("inital event");

void main() async {
  // Timer.periodic(const Duration(seconds: 2), (timer) {
  //   broadCaster.add("data ${timer.tick}");
  //   notifier.value = "data for notifier ${timer.tick}";
  // });
  //
  // broadCaster.stream.listen((event) { print("listener1 event $event"); });
  // broadCaster.stream.listen((event) { print("listener2 event $event"); });
  //
  // notifier.addListener(() {
  //   print("listener notifier ${notifier.value}");
  // });

  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id', "");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Learning Flutter',
      getPages: AppPages.appPages,
      initialRoute: AppRoutes.home,
      debugShowCheckedModeBanner: false,
    );
  }
}
