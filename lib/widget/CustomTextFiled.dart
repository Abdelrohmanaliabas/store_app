import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled({required this.hintTextFiled, this.onChange});
  String? hintTextFiled;
  Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChange,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color.fromARGB(255, 248, 2, 2))),
        hintText: hintTextFiled,
      ),
    );
  }
}
