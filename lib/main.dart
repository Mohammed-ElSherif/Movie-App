import 'package:flutter/material.dart';
import 'package:movieapp/core/themes.dart';
import 'package:movieapp/features/home/screen/logic/homeScreen_provider.dart';
import 'package:provider/provider.dart';
import 'package:movieapp/features/auth/screens/login_screen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
       ChangeNotifierProvider(create: (context) => HomescreenProvider(),)
    ],builder: (context, child) {
       return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: MThemes.lightTheme,
       darkTheme: MThemes.darkTheme,
       home:  const LoginScreen(),
    );
    },);
  }
}