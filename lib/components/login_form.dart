import 'package:flutter/material.dart';

import '../utils/config.dart';
import 'button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passController = TextEditingController();
    bool obsecurePass = false;
    return Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Config.primaryColor,
              decoration: const InputDecoration(
                  hintText: 'Email Address',
                  labelText: 'Email',
                  alignLabelWithHint: true,
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Config.primaryColor,
                  )),
            ),
            Config.spaceSmall,
            TextFormField(
              controller: passController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: obsecurePass,
              cursorColor: Config.primaryColor,
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                alignLabelWithHint: true,
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Config.primaryColor,
                ),
                prefixIconColor: Config.primaryColor,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obsecurePass = !obsecurePass;
                    });
                  },
                  icon: obsecurePass
                      // ignore: dead_code
                      ? const Icon(
                          Icons.visibility_outlined,
                          color: Config.primaryColor,
                        )
                      // ignore: dead_code
                      : const Icon(
                          Icons.visibility_off_outlined,
                          color: Config.primaryColor,
                        ),
                ),
              ),
            ),
            Config.spaceSmall,
            Button(
              width: double.infinity,
              onPressed: () {
                Navigator.of(context).pushNamed('main');
              },
              title: 'Sign In',
              disable: false,
            ),
          ],
        ));
  }
}
