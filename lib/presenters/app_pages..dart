import 'package:get/get.dart';
import 'package:learning_flutter/presenters/app_routes.dart';
import 'package:learning_flutter/presenters/pages/circle_color/circle_color_page.dart';
import 'package:learning_flutter/presenters/pages/dynamic_route/dynamic_route_controller.dart';
import 'package:learning_flutter/presenters/pages/dynamic_route/dynamic_route_page.dart';
import 'package:learning_flutter/presenters/pages/dynamic_route/item_list_page.dart';
import 'package:learning_flutter/presenters/pages/getx_obx/getx_obx_controller.dart';
import 'package:learning_flutter/presenters/pages/getx_obx/getx_obx_page.dart';
import 'package:learning_flutter/presenters/pages/hide_on_scroll/hide_on_scroll_controller.dart';
import 'package:learning_flutter/presenters/pages/hide_on_scroll/hide_on_scroll_page.dart';
import 'package:learning_flutter/presenters/pages/home/home_page.dart';
import 'package:learning_flutter/presenters/pages/intrinsicheight/intrinsic_height_page.dart';
import 'package:learning_flutter/presenters/pages/keyboard_detection/keyboard_detection_controller.dart';
import 'package:learning_flutter/presenters/pages/keyboard_detection/keyboard_detection_page.dart';
import 'package:learning_flutter/presenters/pages/loadmore/load_more_page.dart';
import 'package:learning_flutter/presenters/pages/mutli_instance/multi_instace_page.dart';
import 'package:learning_flutter/presenters/pages/mutli_instance/multi_instance_controller.dart';
import 'package:learning_flutter/presenters/pages/radiolisttile/radio_listtile_page.dart';
import 'package:learning_flutter/presenters/pages/scroll_listener/scroll_listener_controller.dart';
import 'package:learning_flutter/presenters/pages/scroll_listener/scroll_listener_page.dart';
import 'package:learning_flutter/presenters/pages/tabbar_in_popup/tabbar_in_popup_controller.dart';
import 'package:learning_flutter/presenters/pages/tabbar_in_popup/tabbar_in_popup_page.dart';
import 'package:learning_flutter/presenters/pages/textfield_in_bottomsheet/text_field_in_bottom_sheet_page.dart';
import 'package:learning_flutter/presenters/pages/textspan/text_span_page.dart';
import 'package:learning_flutter/presenters/pages/timer/timer_example.dart';
import 'package:learning_flutter/presenters/pages/webview/webview_page.dart';
import 'package:learning_flutter/presenters/pages/widget_bolong/widget_bolong_page.dart';
import 'package:learning_flutter/presenters/pages/wrapcontent_dialog/wrap_content_dialog_page.dart';

import 'pages/timer/timer_example_controller.dart';

abstract class AppPages {
  static final appPages = [
    /// HALAMAN HOME (HALAMAN UTAMA)
    GetPage(
      name: AppRoutes.home,
      page: () {
        return const HomePage();
      },
    ),
    GetPage(
      name: AppRoutes.widgetBolong,
      page: () {
        return const WidgetBolongPage();
      },
    ),

    GetPage(
        name: AppRoutes.radioListtile,
        page: () {
          return RadioListtilePage();
        }),
    GetPage(
      name: AppRoutes.tabbarInPopup,
      page: () {
        return const TabbarInPopupPage();
      },
      binding: BindingsBuilder.put(() => TabbarInPopupController()),
    ),
    GetPage(
      name: AppRoutes.getxObx,
      page: () {
        return const GetxObxPage();
      },
      binding: BindingsBuilder.put(() => GetxObxController()),
    ),
    GetPage(
      name: AppRoutes.textFieldInBottomsheet,
      page: () {
        return const TextFieldInBottomSheetPage();
      },
    ),
    GetPage(
      name: AppRoutes.webview,
      page: () {
        return const WebviewPage();
      },
    ),
    GetPage(
      name: AppRoutes.textSpan,
      page: () {
        return const TextSpanPage();
      },
    ),
    GetPage(
        name: AppRoutes.multiInstance,
        page: () {
          return const MultiInstacePage();
        },
        binding: BindingsBuilder.put(
          () => MultiInstanceController(),
        )),
    GetPage(
      name: AppRoutes.timer,
      page: () => const TimerExamplePage(),
      binding: BindingsBuilder.put(() => TimerExampleController()),
    ),
    GetPage(
      name: AppRoutes.scrollListener,
      page: () => const ScrollListenerPage(),
      binding: BindingsBuilder.put(() => ScrollListenerController()),
    ),

    GetPage(
      name: AppRoutes.loadmore,
      page: () => const LoadMorePage(),
    ),
    GetPage(
      name: AppRoutes.wrapcontentDialog,
      page: () => const WrapContentDialogPage(),
    ),
    GetPage(
      name: AppRoutes.itemList,
      page: () => const ItemListPage(),
    ),
    GetPage(
      name: "${AppRoutes.dynamicRoute}/:item",
      page: () => const DynamicRoutePage(),
      binding: BindingsBuilder.put(() => DynamicRouteControler()),
    ),
    GetPage(
      name: AppRoutes.hideOnScroll,
      page: () => const HideOnScrollPage(),
      binding: BindingsBuilder.put(() => HideOnScrollController()),
    ),
    GetPage(
      name: AppRoutes.keyboardDetection,
      page: () => const KeyboardDetectionPage(),
      binding: BindingsBuilder.put(() => KeyboardDetectionController()),
    ),

    GetPage(
      name: AppRoutes.circleColor,
      page: () => const CircleColorPage(),
    ),
    GetPage(
      name: AppRoutes.intrinsicheight,
      page: () => const IntrinsicHeightPage(),
    ),
  ];
}
