import 'package:flutter/material.dart';
import 'package:flutternewclass/state_manage_test/utilities/constants/string_constants.dart';


AppBar appBarCustom({required String name,}) => AppBar(
  centerTitle: true,
  title:Text(appBarName,style: TextStyle(color: Colors.amber.shade800),),);

TextFormField customTextFormField({
  required String hint,required TextEditingController tec
  })=>TextFormField(
    controller: tec,
    decoration: InputDecoration(
      hintText:hint,
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.green)
          ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.red)
          )
        ));