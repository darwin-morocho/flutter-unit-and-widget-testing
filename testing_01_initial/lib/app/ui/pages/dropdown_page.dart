import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  const DropdownPage({Key? key}) : super(key: key);

  @override
  _DropdownPageState createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  String? _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: _value,
          hint: const Text("select one option"),
          onChanged: (value) {
            _value = value;
            setState(() {});
          },
          items: [
            "yes",
            "no",
          ]
              .map(
                (e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
