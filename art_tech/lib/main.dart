import 'package:art_tech/presentation/screens/home/home_page.dart';
import 'package:art_tech/presentation/screens/registration/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'core/router.dart';

bool isCustLogin = false;
void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: isCustLogin ? const HomePage() : const SignUpPage(),
    routes: router,
  ));
}
