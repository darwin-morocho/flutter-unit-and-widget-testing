import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformWidgetsPage extends StatelessWidget {
  const PlatformWidgetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Platform.isIOS)
              CupertinoButton(
                child: const Text("Cupertino"),
                onPressed: () {},
              )
            else
              ElevatedButton(
                child: const Text("Material"),
                onPressed: () {},
              ),
          ],
        ),
      ),
    );
  }
}
