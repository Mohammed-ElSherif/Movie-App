import 'package:flutter/material.dart';
import 'package:movieapp/core/color.dart';
import 'package:movieapp/features/auth/screens/forgot_password_screen.dart';
import 'package:movieapp/features/auth/screens/signup_secreen.dart';

import 'widgets/custom_button.dart';
import 'widgets/custom_input_user.dart';
import 'widgets/custom_social_media_buttons.dart';
import 'widgets/custom_user_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const CustomUserAuth(
                    textName: "Log In",
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Form(
                      child: Column(
                    children: [
                      const CustomInputUser(
                        inputName: "EMAIL",
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CustomInputUser(
                        inputName: "PASSWORD",
                      ),
                    ],
                  )),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ForgotPasswordScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: MColor.mainColor),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  const CustomSocialMediaButtons(),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomButton(
                    inputName: "LOGIN",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Don't Have Account:"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignupSecreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(color: MColor.mainColor, fontSize: 17),
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
