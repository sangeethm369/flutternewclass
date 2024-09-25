
import 'dart:convert';

import 'package:flutternewclass/contant_vals.dart';
import 'package:http/http.dart' as httpp;

class NetworkMethod{
  static Future getProduct() async{
    var uri=Uri.parse("${ConstantVals.http}/social-profiles");
    try{
      httpp.Response response =await httpp.get(uri);
      if(response.statusCode==200){
        // print(response);
        var data=jsonDecode(response.body);
        return data;
        }
      
    }catch(e){
      print("Exepption: $e");
    }
  }
}