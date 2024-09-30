import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutternewclass/state_manage_test/model/post_model.dart';
import 'package:flutternewclass/state_manage_test/utilities/constants/post_api.dart';
import 'package:http/http.dart' as http;
class PostModelMethod extends ChangeNotifier{
  Uri uri =Uri.parse(postsApi);
  Future<List<Post>?> getPosts()async{
    try {
      http.Response res=await http.get(uri);
      if (res.statusCode==200) {
        List bd=jsonDecode(res.body);
        List<Post> data=bd.map((e) => Post.fromJson(e)).toList();
        return data; 
      }
    } catch (e) {
      print("Posts:$e");
    }
    return null;
  }
}

