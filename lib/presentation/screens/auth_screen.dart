import 'package:flutter/material.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/constants/colors.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/constants/routes.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/presentation/widgets/form_field_widget.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/presentation/widgets/intro_texts.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/presentation/widgets/primary_button.dart';

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
                IntroTexts(
                  header: "What is Your Phone Number",
                  underHeader: "Please, Enter your phone Number",
                  phone: "",
                ),
                const SizedBox(height: 110),
                FormFieldWidget(),
                SizedBox(height: 50),
                Primarybutton(
                  text: "Next",
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      otpScreenRoute,
                      // TODO:later
                      arguments: "+967776434968",
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
