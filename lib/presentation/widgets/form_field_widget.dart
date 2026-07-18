import 'package:flutter/material.dart';
import 'package:flutter_maps_firebase_sqflite_api_project/constants/colors.dart';
import 'package:country_picker/country_picker.dart';

class FormFieldWidget extends StatefulWidget {
  FormFieldWidget({super.key});

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  late Country selectedCountry;
  late String phoneNumber;
  @override
  void initState() {
    super.initState();
    // Default to Yemen
    selectedCountry =
        Country.tryParse('YE') ??
        Country(
          phoneCode: '967',
          countryCode: 'YE',
          e164Sc: 1,
          geographic: true,
          level: 1,
          name: 'Yemen',
          example: '770123456',
          displayName: 'Yemen (YE) [+967]',
          displayNameNoCountryCode: 'Yemen',
          e164Key: '967-YE-0',
        );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          // flex: 1,
          child: InkWell(
            onTap: () {
              showCountryPicker(
                context: context,
                showPhoneCode: true,
                onSelect: (Country country) {
                  setState(() {
                    selectedCountry = country;
                  });
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 13),
              // padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // color: MyColors.lightGrey,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              child: _buildCountriesFlagAndCode(),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              // color: MyColors.lightGrey,
              border: Border.all(color: MyColors.blue, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
            child: TextFormField(
              autofocus: true,
              style: TextStyle(fontSize: 16, letterSpacing: 2.0),
              decoration: InputDecoration(border: InputBorder.none),
              cursorColor: Colors.black,
              keyboardType: TextInputType.phone,
              validator: (value) {
                if (value!.isEmpty) {
                  return "please Enter Your Phone Number";
                } else if (value.length < 9) {
                  return "Invalid Phone Number";
                }
                return null;
              },
              onSaved: (newValue) {
                phoneNumber = newValue!;
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCountriesFlagAndCode() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(selectedCountry.flagEmoji, style: const TextStyle(fontSize: 18)),
        const SizedBox(width: 8),
        Text(
          '+${selectedCountry.phoneCode}',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Icon(Icons.arrow_drop_down, color: Colors.grey),
      ],
    );
  }
}
