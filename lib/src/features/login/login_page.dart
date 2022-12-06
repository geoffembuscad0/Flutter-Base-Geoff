// Login Page
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web_admin_template/src/core/constant/app_style_decoration.dart';
import 'package:flutter_web_admin_template/src/core/provider/auth_provider.dart';
import 'package:flutter_web_admin_template/src/core/router/main_router.dart';
import 'package:flutter_web_admin_template/src/shared/widgets/common/login_logo.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:oktoast/oktoast.dart';
import 'package:skadi/skadi.dart' hide SkadiContextX;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SkadiFormMixin {
  TextEditingController emailTC = TextEditingController(text: "admin@gmail.com");
  TextEditingController passwordTC = TextEditingController(text: "123456");
  AuthProvider authProvider = GetIt.I.get<AuthProvider>();

  FutureOr<void> onSignIn() async {
    try {
      String email = emailTC.text.trim();
      String password = passwordTC.text.trim();
      await authProvider.onSignIn(email, password);
      GoRouter.of(context).go(AppRoutes.dashboard);
    } catch (e) {
      showToast(e.toString());
    }
  }

  @override
  void dispose() {
    emailTC.dispose();
    passwordTC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
      title: "Sign in to Empleyado",
      color: Colors.white,
      child: KeyboardDismiss(
        child: Scaffold(
          body: Center(
            child: Container(
              width: 400,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 247, 247, 247),
                borderRadius: SkadiDecoration.radius(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LoginLogo(),
                  const SpaceY(32),
                  TextFormField(
                    controller: emailTC,
                    decoration: const InputDecoration(
                      hintText: "Username / Email"
                    ),
                  ),
                  const SpaceY(24),
                  TextFormField(
                    controller: passwordTC,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      suffixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.remove_red_eye_rounded,
                        ),
                      )
                    )
                  ),
                  const SpaceY(24),
                  SkadiAsyncButton(
                    height: 46,
                    margin: EdgeInsets.zero,
                    onPressed: onSignIn,
                    child: const Text("Login"),
                  ),
                  const SpaceY(24),
                  _buildFooter(),
                  const SpaceY(32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          "Having trouble in sign in?",
          style: TextStyle(
            color: Color.fromARGB(221, 144, 144, 144) // 0xFFBCBDC0
          )
        )
      ],
    );
  }
}
