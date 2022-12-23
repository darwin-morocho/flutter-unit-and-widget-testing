import 'package:flutter/material.dart';

import '../dialogs/dialogs.dart';
import '../routes/routes.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
          'home page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  void _logout(BuildContext context) async {
    final yes = await showConfirmDialog(context);
    if (yes && mounted) {
      /// pop all routes and then go to LOGIN page
      Navigator.pushNamedAndRemoveUntil(
        context,
        Routes.LOGIN,
        (_) => false,
      );
    }
  }
}
