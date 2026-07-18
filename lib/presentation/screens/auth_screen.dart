import 'package:flutter/material.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/constants/colors.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/presentation/widgets/form_field_widget.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});
  final GlobalKey<FormState> formState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.lightGrey,
        body: Form(
          key: formState,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 88),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildIntroTexts(),
                const SizedBox(height: 110),
                FormFieldWidget(),
                SizedBox(height: 50),
                _buildNextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIntroTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What is Your Phone Number",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: const Text(
            "Please, Enter your phone Number",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  _buildNextButton() {
    return Align(
      alignment: Alignment.bottomRight,
      child: ElevatedButton(
        // TODO: We will do it later
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          minimumSize: Size(110, 50),
          foregroundColor: MyColors.lightGrey,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),

        child: Text(
          "Next",
          style: TextStyle(color: MyColors.lightGrey, fontSize: 16),
        ),
      ),
    );
  }
}
