import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0)),
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
