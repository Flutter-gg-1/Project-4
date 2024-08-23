import 'package:flutter/material.dart';
import 'package:shopping/global.dart';
import 'package:shopping/src/landing_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final formKey = GlobalKey<FormState>();

  loginCheck() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LandingScreen()));
    } else {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('input valide user name and password'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Scrollbar(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 512),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 412),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset("assets/images/logo.jpg"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      key: formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              label: Text("User Name"),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'This feild is required';
                              }
                              if (!value.contains("@")) {
                                return "pleas input valide email";
                              }

                              return null;
                            },
                            onChanged: (value) {
                              user.userName = value;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                label: Text("Password"),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "This feild is required";
                                }
                                return null;
                              },
                              onChanged: (value) {
                                user.password = value;
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: loginCheck,
                            child: const Text("Log in"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
