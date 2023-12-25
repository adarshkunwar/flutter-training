import 'dart:developer';

import 'package:flutter/material.dart';

enum GENDER { MALE, FEMALE, OTHERS }

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  TextEditingController userNameController = TextEditingController();
  bool checkBoxState = false;
  double sliderSize = 10;
  GENDER selectedGender = GENDER.MALE;
  static List<String> friuts = ["Apple", "Orange", "Banana"];
  String selectedFruits = friuts.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              width: 300,
              child: TextFormField(
                controller: userNameController,
                keyboardType: TextInputType.phone,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: "UserName",
                    labelStyle: TextStyle(color: Colors.red),
                    hintText: "This is hint",
                    suffix: Icon(Icons.person),
                    prefix: Icon(Icons.help)),
              ),
            ),
          ),
          Checkbox(
              activeColor: Colors.green,
              checkColor: Colors.red,
              value: checkBoxState,
              onChanged: (value) {
                setState(() {
                  checkBoxState = !checkBoxState;
                });
              }),
          Row(
            children: [
              Radio(
                  value: GENDER.MALE,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  }),
              Radio(
                  value: GENDER.FEMALE,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  }),
              Radio(
                  value: GENDER.OTHERS,
                  groupValue: selectedGender,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = value!;
                    });
                  })
            ],
          ),
          Slider(
              min: 0,
              max: 100,
              label: "Slider",
              divisions: 10,
              value: sliderSize,
              onChanged: (value) {
                setState(() {
                  sliderSize = value;
                });
              }),
          DropdownButton(
              value: selectedFruits,
              items: friuts
                  .map((e) => DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedFruits = value ?? "";
                });
              }),
          ElevatedButton(
              onPressed: () {
                log(userNameController.text);
                log(checkBoxState.toString());
                log(sliderSize.toString());
                log(selectedGender.name.toString());
                log(selectedFruits.toString());
              },
              child: Text("hasdf"))
        ],
      ),
    );
  }
}
