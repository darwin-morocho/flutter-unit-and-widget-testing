import 'package:flutter/material.dart';
import 'package:flutter_unit_and_widget_testing/app/ui/dialogs/dialogs.dart';
import 'package:flutter_unit_and_widget_testing/app/ui/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => _logout(context),
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          "home page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  void _logout(BuildContext context) async {
    final yes = await Dialogs.confirm(context);
    if (yes) {
      /// pop all routes and then go to LOGIN page
      Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.LOGIN,
        (_) => false,
      );
    }
  }
}
