import 'package:flutter/material.dart';

class OverflowView extends StatelessWidget {
  const OverflowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: Text(
                      'This is a flutter course. Add more text to '
                      'force an overflow error',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(width: 30),
                  Icon(
                    Icons.flutter_dash,
                    size: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
