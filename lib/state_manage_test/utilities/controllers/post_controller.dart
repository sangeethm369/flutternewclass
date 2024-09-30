import 'package:flutter/material.dart';
import 'package:flutternewclass/state_manage_test/model/post_model.dart';
import 'package:flutternewclass/state_manage_test/model/post_model_method.dart';

class PostController with ChangeNotifier{
  List<Post> list=[];
  Future getPost()async{
    list=(await PostModelMethod().getPosts())!;
  
    notifyListeners();
  }
}