import 'dart:convert';

import 'package:flutternewclass/state_manage_test/model/user_model.dart';
import 'package:flutternewclass/state_manage_test/utilities/constants/data_base_api.dart';
import 'package:http/http.dart' as http;
class UserApiMetod {
  var uri=Uri.parse(getApi);
  Future<List<Movies>?> getUserData()async{
    try {
      http.Response res=await http.get(uri) ;
      if (res.statusCode==200) {
        var body=res.body;
        List listbody=jsonDecode(body);
        List<Movies> data = listbody.map((i)=>Movies.fromJson(i)).toList();
        return data;
      }
    } catch (e) {
      print("meth: $e");
    }
    
    return null; 
  }
  
}