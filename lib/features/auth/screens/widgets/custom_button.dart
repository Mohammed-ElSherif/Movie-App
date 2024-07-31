import 'package:flutter/material.dart';
import 'package:movieapp/core/color.dart';

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
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
