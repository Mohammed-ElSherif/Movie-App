import 'package:flutter/material.dart';
import 'package:movieapp/core/color.dart';

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
            child: Column(
              children: [
                CustomUserAuth(),
                SizedBox(
                  height: 40,
                ),
                Form(
                    child: Column(
                  children: [
                    CustomInputUser(
                      inputName: "EMAIL",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomInputUser(
                      inputName: "PASSWORD",
                    ),
                  ],
                )),
                SizedBox(
                  height: 30,
                ),
                CustomSocialMediaButtons(),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  inputName: "LOGIN",
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Don't Have Account:"),
                TextButton(
                  onPressed: () {},
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
    );
  }
}

class CustomInputUser extends StatelessWidget {
  const CustomInputUser({
    super.key,
    required this.inputName,
  });
  final String inputName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inputName,
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "First Name Here",
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomUserAuth extends StatelessWidget {
  const CustomUserAuth({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26.withOpacity(0.1),
                    blurRadius: 6,
                    offset: Offset(0, 5)),
              ]),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 45,
              child: Image.asset(
                "assets/profile/user-2.png",
                height: 70,
                width: 60,
              )),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text("Log In",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.inputName});
  final String inputName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 384,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: MColor.mainColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        ),
        onPressed: () {},
        child: Text(
          inputName,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

//

class CustomSocialMediaButtons extends StatelessWidget {
  const CustomSocialMediaButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10.0,
              child: Center(
                child: Container(
                  height: 1.5,
                  margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  color: Colors.grey,
                  width: 120,
                ),
              ),
            ),
            Text("Social Media"),
            SizedBox(
              height: 10.0,
              child: Center(
                child: Container(
                  height: 1.5,
                  margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  color: Colors.grey,
                  width: 120,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Image.asset("assets/logo/Facebook.png",),
              Image.asset("assets/logo/Google.png"),
            ],
          ),
        ),
      ],
    );
  }
}
