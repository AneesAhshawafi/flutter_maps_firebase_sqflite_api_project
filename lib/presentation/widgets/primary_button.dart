import 'package:flutter/material.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/constants/colors.dart';

class Primarybutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Primarybutton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(110, 50),
          foregroundColor: MyColors.lightGrey,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),

        child: Text(
          text,
          style: TextStyle(color: MyColors.lightGrey, fontSize: 16),
        ),
      ),
    );
  }
}
