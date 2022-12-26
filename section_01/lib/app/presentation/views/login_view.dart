// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../dialogs/dialogs.dart';
import '../dialogs/show_loader.dart';
import '../routes/routes.dart';
import '../utils/validator.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  String _email = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            color: Colors.transparent,
            width: double.infinity,
            child: Form(
              key: _formKey,
              child: Align(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 320,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextFormField(
                        key: const Key('input-email'),
                        onChanged: (text) => _email = text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          label: Text('email'),
                        ),
                        validator: (text) {
                          if (isValidEmail(text ?? '')) {
                            return null;
                          }
                          return 'Invalid email';
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        key: const Key('input-password'),
                        onChanged: (text) => _password = text,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          label: Text('password'),
                        ),
                        validator: (text) {
                          final errors = isValidPassword(text ?? '');
                          if (errors.isEmpty) {
                            return null;
                          }
                          return errors.first;
                        },
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () => _submit(context),
                        child: const Text('SEND'),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      await showLoader(
        context,
        Future.delayed(
          const Duration(milliseconds: 1000),
        ),
      );

      if (!mounted) {
        return;
      }

      if (_email == 'test@test.com' && _password == 'Test123@') {
        Navigator.pushNamedAndRemoveUntil(
          context,
          Routes.HOME,
          (_) => false,
        );
      } else {
        showAlertDialog(
          context,
          message: 'Invalid email or password',
        );
      }
    }
  }
}
