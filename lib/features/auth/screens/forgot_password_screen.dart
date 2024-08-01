import 'package:flutter/material.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_button.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_input_user.dart';
import 'package:movieapp/features/auth/screens/widgets/custom_user_auth.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButton(),
                const SizedBox(height: 40),
                //
               const  Center(
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
                      CustomInputUser(inputName: "email Here"),
                      SizedBox(height: 45,),
                      CustomButton(inputName: "SEND EMAIL"),
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

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(
                vertical: 0, horizontal: 0)),
        onPressed: () {
          Navigator.pop(context);
        },
        label: const Row(
          children: [
            Icon(Icons.arrow_back_ios),
            Text("Back"),
          ],
        ));
  }
}
