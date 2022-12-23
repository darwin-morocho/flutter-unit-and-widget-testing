import 'package:flutter/material.dart';

import 'ui/routes/app_routes.dart';
import 'ui/views/menu_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MenuView(),
      routes: appRoutes,
    );
  }
}
