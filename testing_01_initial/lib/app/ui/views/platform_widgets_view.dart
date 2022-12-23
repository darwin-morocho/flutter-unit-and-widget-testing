import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformWidgetsView extends StatelessWidget {
  const PlatformWidgetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Platform.isIOS)
              CupertinoButton(
                child: const Text('Cupertino'),
                onPressed: () {},
              )
            else
              ElevatedButton(
                child: const Text('Material'),
                onPressed: () {},
              ),
          ],
        ),
      ),
    );
  }
}
