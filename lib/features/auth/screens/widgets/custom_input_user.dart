import 'package:flutter/material.dart';

class CustomInputUser extends StatelessWidget {
  const CustomInputUser({
    super.key,
    required this.inputName,
    required this.hintTexts,
  });
  final String hintTexts;
  final String inputName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            inputName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 20
              ),
              hintText: hintTexts,
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
