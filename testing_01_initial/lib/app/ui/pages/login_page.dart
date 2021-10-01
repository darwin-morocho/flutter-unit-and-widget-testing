import 'package:flutter/material.dart';
import 'package:flutter_unit_and_widget_testing/app/ui/dialogs/dialogs.dart';
import 'package:flutter_unit_and_widget_testing/app/ui/routes/routes.dart';
import 'package:flutter_unit_and_widget_testing/app/utils/validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String _email = '', _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        onChanged: (text) => _email = text,
                        decoration: const InputDecoration(
                          label: Text("email"),
                        ),
                        validator: (text) {
                          if (isValidEmail(text ?? "")) {
                            return null;
                          }
                          return "Invalid email";
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        onChanged: (text) => _password = text,
                        decoration: const InputDecoration(
                          label: Text("password"),
                        ),
                        validator: (text) {
                          final errors = isValidPassword(text ?? "");
                          if (errors.isEmpty) {
                            return null;
                          }
                          return errors.first;
                        },
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () => _submit(context),
                        child: const Text("SEND"),
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
      Dialogs.progress(context);

      await Future.delayed(
        const Duration(milliseconds: 1000),
      );

      if (_email == "test@test.com" && _password == "Test123@") {
        Navigator.pushNamedAndRemoveUntil(
          context,
          Routes.HOME,
          (_) => false,
        );
      } else {
        Navigator.pop(context);
        Dialogs.alert(
          context,
          message: "Invalid email or password",
        );
      }
    }
  }
}
