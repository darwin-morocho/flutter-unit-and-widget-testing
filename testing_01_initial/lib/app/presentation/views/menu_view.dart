import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: appRoutes.keys
            .map(
              (key) => ListTile(
                title: Text(
                  key,
                  style: const TextStyle(
                    fontSize: 19,
                  ),
                ),
                onTap: () => Navigator.pushNamed(
                  context,
                  key,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
