import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:lottie/lottie.dart';

class LottiePg extends StatefulWidget {
  const LottiePg({super.key});

  @override
  State<LottiePg> createState() => _LottiePgState();
}

class _LottiePgState extends State<LottiePg> {
  File? _image;
  final ImagePicker _picker=ImagePicker();
  Future<void>_pickImage(ImageSource source)async{
    final XFile? image=await _picker.pickImage(source: source);
    if(image!=null){
      setState(() {
        _image=File(image.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            _image==null?
            CircleAvatar(radius: 60,backgroundImage: AssetImage("assets/images/Cappuccino.jpg"),):
            CircleAvatar(radius: 60,backgroundImage: FileImage(_image!)),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: ()=>_pickImage(ImageSource.gallery), child: Text("Galary")),
            ElevatedButton(onPressed: ()=>_pickImage(ImageSource.camera), child: Text("Camera")),
          ],
        ),
      ),


       // body: Center(
      //   child: Lottie.asset("assets/images/PoliteChicky.json",)),
    );
  }
}