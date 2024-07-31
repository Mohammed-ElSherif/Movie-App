import 'package:flutter/material.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_button.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_user_auth.dart';

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
                CustomUserAuth(
                  textName: "Sing Up",
                ),
                Form(
                  child: Column(children: [
                    CustomInputUser(
                      inputName: "First Name",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     CustomInputUser(
                      inputName: "Last Name",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     CustomInputUser(
                      inputName: "Email",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     CustomInputUser(
                      inputName: "Password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                     CustomInputUser(
                      inputName: "Confrom Password",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomButton(inputName: "Sign Up")
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
