import 'package:flutter/material.dart';

import '../views/content_not_visible_view.dart';
import '../views/counter_view.dart';
import '../views/dropdown_view.dart';
import '../views/home_view.dart';
import '../views/login_view.dart';
import '../views/menu_view.dart';
import '../views/overflow_view.dart';
import '../views/platform_widgets_view.dart';
import '../views/slidable_view.dart';
import '../views/tabs_view.dart';
import 'routes.dart';

Map<String, WidgetBuilder> get appRoutes {
  return {
    '/': (_) => const MenuView(),
    Routes.COUNTER: (_) => const CounterView(),
    Routes.PLATFORM_WIDGETS: (_) => const PlatformWidgetsView(),
    Routes.LOGIN: (_) => const LoginView(),
    Routes.HOME: (_) => const HomeView(),
    Routes.OVERFLOW: (_) => const OverflowView(),
    Routes.CONTENT_NOT_VISIBLE: (_) => const ContentNotVisibleView(),
    Routes.SLIDABLE: (_) => const SlidableView(),
    Routes.TABS: (_) => const TabsView(),
    Routes.DROPDOWN: (_) => const DropdownView(),
  };
}
