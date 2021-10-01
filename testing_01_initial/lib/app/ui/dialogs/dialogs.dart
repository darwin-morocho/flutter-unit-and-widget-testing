import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dialogs {
  Dialogs._();

  static Future<void> alert(
    BuildContext context, {
    Key? key,
    required String message,
  }) {
    return showDialog(
      context: context,
      builder: (_) => AlertDialog(
        key: key,
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }

  static Future<void> progress(
    BuildContext context, {
    Key? key,
  }) {
    return showCupertinoModalPopup(
      context: context,
      builder: (_) => WillPopScope(
        key: key,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
        onWillPop: () async => false,
      ),
    );
  }

  static Future<bool> confirm(
    BuildContext context, {
    Key? key,
    String message = "Are you sure?",
  }) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        key: key,
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text("Yes"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("No"),
          ),
        ],
      ),
    );
    return result ?? false;
  }
}
