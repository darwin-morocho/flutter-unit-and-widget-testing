import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/platform.dart';

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
            if (isIOS)
              CupertinoButton(
                child: const Text('ios'),
                onPressed: () {},
              )
            else
              ElevatedButton(
                child: Text(isWeb ? 'web' : 'android'),
                onPressed: () {},
              ),
          ],
        ),
      ),
    );
  }
}
