import 'package:flutter/material.dart';

class OverflowPage extends StatelessWidget {
  const OverflowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "This is a flutter course",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 30),
                  Icon(
                    Icons.flutter_dash,
                    size: 40,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
