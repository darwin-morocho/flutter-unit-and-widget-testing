// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class DropdownView extends StatefulWidget {
  const DropdownView({super.key});

  @override
  _DropdownViewState createState() => _DropdownViewState();
}

class _DropdownViewState extends State<DropdownView> {
  String? _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownButton<String>(
          value: _value,
          style: const TextStyle(
            fontSize: 20,
          ),
          hint: const Text('select one option'),
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
          items: [
            'yes',
            'no',
          ]
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Text(
                    e,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
