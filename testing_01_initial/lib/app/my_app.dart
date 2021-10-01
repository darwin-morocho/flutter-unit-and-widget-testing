import 'package:flutter/material.dart';
import 'ui/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) => Scaffold(
          body: ListView(
            children: appRoutes.keys
                .map(
                  (key) => ListTile(
                    title: Text(key),
                    onTap: () => Navigator.pushNamed(context, key),
                  ),
                )
                .toList(),
          ),
        ),
      ),
      routes: appRoutes,
    );
  }
}
