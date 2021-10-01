import 'package:flutter/material.dart';
import 'package:flutter_unit_and_widget_testing/app/ui/dialogs/dialogs.dart';

class ContentNotVisiblePage extends StatelessWidget {
  const ContentNotVisiblePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ...Colors.primaries.map(
            (e) => Container(
              height: 50,
              color: e,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Dialogs.alert(context, message: "GREAT COURSE");
            },
            child: const Text("show message"),
          ),
        ],
      ),
    );
  }
}
