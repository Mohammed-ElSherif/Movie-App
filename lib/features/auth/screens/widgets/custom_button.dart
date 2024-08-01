import 'package:flutter/material.dart';
import 'package:movieapp/core/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.inputName, required this.navRoute});
  final String inputName;
   final Widget navRoute;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 384,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: MColor.mainColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => navRoute,));
        },
        child: Text(
          inputName,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
