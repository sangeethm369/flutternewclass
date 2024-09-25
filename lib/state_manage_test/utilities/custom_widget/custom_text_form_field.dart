import 'package:flutter/material.dart';

class CustomTextFormFields extends StatelessWidget {
  final String hint;
  final TextEditingController? ctr;
  const CustomTextFormFields({super.key,this.ctr ,required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:ctr,
      decoration: InputDecoration(
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.green)
          ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.red)
          )
        ),
      );
  }
}