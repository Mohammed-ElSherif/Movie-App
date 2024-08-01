
import 'package:flutter/material.dart';
import 'package:movieapp/core/color.dart';
import 'package:movieapp/features/home/screen/logic/homeScreen_provider.dart';
import 'package:provider/provider.dart';

class CustomItemBottoms extends StatelessWidget {
  const CustomItemBottoms({super.key, required this.iconIrtem, required this.textItem, this.onTap});
 final Widget iconIrtem ; 
 final Widget textItem;
 final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    
      return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          iconIrtem,
          textItem ,
        ],
      ),
    );
    
  }
} 