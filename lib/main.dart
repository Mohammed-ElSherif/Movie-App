import 'package:flutter/material.dart';
import 'package:movieapp/core/themes.dart';
import 'package:movieapp/features/auth/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: MThemes.lightTheme,
       darkTheme: MThemes.darkTheme,
       home:  const LoginScreen(),
    );
  }
}