import 'package:flutter/material.dart';

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
                  margin: const EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  color: Colors.grey,
                  width: 120,
                ),
              ),
            ),
            const Text("Social Media"),
            SizedBox(
              height: 10.0,
              child: Center(
                child: Container(
                  height: 1.5,
                  margin: const EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                  color: Colors.grey,
                  width: 120,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/logo/Facebook.png",
              ),
              Image.asset("assets/logo/Google.png"),
            ],
          ),
        ),
      ],
    );
  }
}
