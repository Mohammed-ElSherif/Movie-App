import 'package:flutter/material.dart';

class CustomUserAuth extends StatelessWidget {
  const CustomUserAuth({
    super.key, required this.textName,
  });
  final String textName;
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
                    offset: const Offset(0, 5)),
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
         Text(
          textName,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

