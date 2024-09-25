
import 'dart:convert';

import 'package:flutternewclass/state_manage_test/utilities/constants/data_base_api.dart';
import 'package:http/http.dart' as http;
class UserApiMetod {
  var uri=Uri.parse(getApi);
  Future getUserData()async{
    try {
      http.Response res=await http.get(uri) ;
      if (res.statusCode==200) {
        // print(res.body);
        var data=jsonDecode(res.body);
        return data;
      }
    } catch (e) {
      print("meth: $e");
    }
    return null;
    
  }
  
}