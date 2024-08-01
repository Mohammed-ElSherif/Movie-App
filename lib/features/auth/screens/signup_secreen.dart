import 'package:flutter/material.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_button.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_user_auth.dart';
import 'package:movieapp/features/home/screen/home_screen.dart';

import 'widgets/custom_back_button.dart';
import 'widgets/custom_input_user.dart';

class SignupSecreen extends StatelessWidget {
  const SignupSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: SingleChildScrollView(
              child: Column(children: [
                CustomBackButton(),
                CustomUserAuth(
                  textName: "Sing Up",
                ),
                Form(
                  child: Column(children: [
                    CustomInputUser(
                      hintTexts: "First Name Here",
                      inputName: "First Name",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     CustomInputUser(
                      hintTexts: "Last Name Here",
                      inputName: "Last Name",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     CustomInputUser(
                      hintTexts: "Email Here",
                      inputName: "Email",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     CustomInputUser(
                      hintTexts: "Password Here",
                      inputName: "Password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     CustomInputUser(
                      hintTexts: "Conform Password here",
                      inputName: "Confrom Password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(navRoute:HomeScreen(),
                      inputName: "Sign Up")
                  ]),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
