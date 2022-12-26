import 'package:flutter/material.dart';

import 'presentation/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.initialRoute,
    this.routes,
  });

  final String? initialRoute;
  final Map<String, WidgetBuilder>? routes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: initialRoute ?? '/',
      routes: routes ?? appRoutes,
    );
  }
}
