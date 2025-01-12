import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:insta_pro/authentication/login/login.dart';
import 'package:insta_pro/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      home: const LoginScreen(),
    );
  }
}
