import 'package:flutter/material.dart';
import '../pages/tabs_page.dart';
import '../pages/slidable_page.dart';
import '../pages/content_not_visible_page.dart';
import '../pages/overflow_page.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/counter_page.dart';
import '../pages/platform_widgets_page.dart';
import 'routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.COUNTER: (_) => const CounterPage(),
    Routes.PLATFORM_WIDGETS: (_) => const PlatformWidgetsPage(),
    Routes.LOGIN: (_) => const LoginPage(),
    Routes.HOME: (_) => const HomePage(),
    Routes.OVERFLOW: (_) => const OverflowPage(),
    Routes.CONTENT_NOT_VISIBLE: (_) => const ContentNotVisiblePage(),
    Routes.SLIDABLE: (_) => const SlidablePage(),
    Routes.TABS: (_) => const TabsPage(),
  };
}
