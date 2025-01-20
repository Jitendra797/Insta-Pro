import 'package:flutter/material.dart';
import 'package:insta_pro/authentication/login/widgets/login_form.dart';
import 'package:insta_pro/authentication/login/widgets/login_header.dart';
import 'package:insta_pro/common/styles/spacing_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: KSpacingStyle.paddingWithAppBarHeight,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [LoginHeader(), LoginForm()],
          ),
        ),
      ),
    );
  }
}
