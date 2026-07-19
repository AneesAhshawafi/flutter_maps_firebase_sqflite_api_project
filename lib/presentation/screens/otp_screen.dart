import 'package:flutter/material.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/constants/colors.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/presentation/widgets/intro_texts.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/presentation/widgets/primary_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  final String phone;
  // ignore: prefer_const_constructors_in_immutables
  OtpScreen({super.key, required this.phone});
  // final pinInputController = PinInputController();
  late final String pin;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 32, vertical: 88),
          child: Column(
            children: [
              IntroTexts(
                header: "Verify your phone number",
                underHeader: "Enter the 6-digits code we send to you at ",
                phone: "",
              ),
              SizedBox(height: 88),
              _biuldPinCodeFields(context),
              SizedBox(height: 60),
              Primarybutton(text: "Verify", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _biuldPinCodeFields(BuildContext context) {
    return Flexible(
      // padding: EdgeInsets.all(2),
      child: MaterialPinField(
        enablePaste: true,
        length: 6,
        obscureText: false,
        blinkWhenObscuring: true,
        blinkDuration: Duration(milliseconds: 500),
        theme: MaterialPinTheme(
          // Shape
          shape: MaterialPinShape.outlined,
          cellSize: Size(50, 64),
          spacing: 8,
          borderRadius: BorderRadius.circular(6),

          // Border
          borderWidth: 1.5,
          focusedBorderWidth: 2.0,
          borderColor: Colors.black,
          focusedBorderColor: Colors.blue,
          filledBorderColor: Colors.green,
          errorColor: Colors.red,

          // Fill
          fillColor: MyColors.lightGrey,
          focusedFillColor: Colors.blue[50],
          filledFillColor: MyColors.lightBlue,

          // Text
          textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textGradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
          obscuringCharacter: '●',

          // Cursor
          showCursor: true,
          cursorColor: Colors.black,
          cursorWidth: 2,
          animateCursor: true,

          // Animation
          entryAnimation: MaterialPinAnimation.scale,
          animationDuration: Duration(milliseconds: 150),
          animationCurve: Curves.easeOut,

          // Error
          enableErrorShake: true,
          errorAnimationDuration: Duration(milliseconds: 500),
        ),
        onCompleted: (pin) {
          this.pin = pin;
        },
      ),
    );
  }
}
