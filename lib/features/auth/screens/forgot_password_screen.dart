import 'package:flutter/material.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_button.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_input_user.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_user_auth.dart';
import 'package:movieapp/features/home/screen/home_screen.dart';

import 'widgets/custom_back_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomBackButton(),
                SizedBox(height: 40),
                //
               Center(
                  child: Column(
                    children: [
                      CustomUserAuth(textName: "Forgot Password?"),
                      SizedBox(height: 15,),
                      Text(
                          "Enter the email address you used to\ncreate your account and we will email\nyou a link to reset your password" ,style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),),
                           SizedBox(height: 40,),
                      CustomInputUser(hintTexts: "Email Here", inputName: "EMAIL"),
                      SizedBox(height: 45,),
                      CustomButton(inputName: "SEND EMAIL", navRoute: HomeScreen(),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

