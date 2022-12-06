// Company Auth
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web_admin_template/src/core/constant/app_style_decoration.dart';
import 'package:flutter_web_admin_template/src/core/provider/auth_provider.dart';
import 'package:flutter_web_admin_template/src/core/router/main_router.dart';
import 'package:flutter_web_admin_template/src/shared/widgets/common/company_auth_logo.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:oktoast/oktoast.dart';
import 'package:skadi/skadi.dart' hide SkadiContextX;

class CompanyAuthPage extends StatefulWidget {
  const CompanyAuthPage({Key? key}) : super(key: key);

  @override
  State<CompanyAuthPage> createState() => _CompanyAuthState();
}

class _CompanyAuthState extends State<CompanyAuthPage> with SkadiFormMixin {
  // TextEditingController emailTC = TextEditingController(text: "admin@gmail.com");
  TextEditingController companyCodeTC = TextEditingController(text: "samadi");
  AuthProvider authProvider = GetIt.I.get<AuthProvider>();

  FutureOr<void> goToSignIn() async {
    try {
      String code = companyCodeTC.text.trim();
      // String password = passwordTC.text.trim();
      // await authProvider.onSignIn(email, password);
      GoRouter.of(context).go(AppRoutes.login);
    } catch (e) {
      showToast(e.toString());
    }
  }

  @override
  void dispose() {
    companyCodeTC.dispose();
    // passwordTC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
      title: "Enter Company Code",
      color: Colors.white,
      child: KeyboardDismiss(
        child: Scaffold(
          body: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 500,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              margin: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //   color: Color.fromARGB(100, 247, 247, 247),
              //   borderRadius: SkadiDecoration.radius(24),
              // ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CompanyAuthLogo(),
                  const SpaceY(18),
                  TextFormField(
                    controller: companyCodeTC,
                    decoration: const InputDecoration(hintText: "Enter your code here"),
                  ),
                  const SpaceY(70),
                  const NotesCard(),
                  const SpaceY(24),
                  SkadiAsyncButton(
                    height: 56,
                    margin: EdgeInsets.zero,
                    onPressed: goToSignIn,
                    child: const Text("Proceed", style: btnLabel),
                  )
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
        const Text("Having trouble in sign in?",
            style: TextStyle(
                color: Color.fromARGB(221, 144, 144, 144) // 0xFFBCBDC0
                ))
      ],
    );
  }
}
