import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CountController with ChangeNotifier {
  int count=0;
  increament(){
    count++;
    notifyListeners();
  }
  decrement(){
    count--;
    notifyListeners();
  }
}

class ImagePickerController with ChangeNotifier {
  File? file;
  Future imagePicker()async{
    ImagePicker picker =ImagePicker();
    var img =await picker.pickImage(source: ImageSource.gallery);
    file=File(img!.path);
    notifyListeners();
  }
}

class MultyImagePicker with ChangeNotifier {
  List<File> file=[];
  Future imagePicker()async{
    ImagePicker picker =ImagePicker();
    var img =await picker.pickMultiImage();
    file.addAll(img.map((e) => File(e.path),).toList());
    notifyListeners();
  }
}