import 'dart:convert';

import 'package:flutternewclass/contant_vals.dart';
import 'package:flutternewclass/models/dummy_model.dart';
import 'package:http/http.dart' as httpp;

class NetworkMethod{
  static Future<DummyRespose?> getProduct() async{
    var uri=Uri.parse("${ConstantVals.https}/carts");
    try{
      httpp.Response response =await httpp.get(uri);
      
      if(response.statusCode==200){
        var result = DummyRespose.fromRawJson(response.body);
        return result;
        }
      
    }catch(e){
      print("Exeption: $e");
    }
    return null;
  }
}

class NetworkMethLocal{
  static Future getData()async{
    var uri=Uri.parse("${ConstantVals.http}/get_data");
    try{
      httpp.Response response= await httpp.get(uri);
      if(response.statusCode==200){
        var datas=jsonDecode(response.body);
        return datas;
      }
    }catch(e){print("Exp:$e");
    }
  }
  static Future postData({required name,required email,required phone}) async{
    var uri=Uri.parse("${ConstantVals.http}/registration");
    try {
      httpp.Response res=await httpp.post(uri,body: {"name":name,"email":email,"phone":phone});
      print("$res");
    } catch (e) {print("PostExp:$e");
      
    }
  }
  static Future<bool?> userLogin({required email,required phone})async{
    var uri=Uri.parse("${ConstantVals.http}/user_login");
    try {
      httpp.Response response=await httpp.post(uri,body: {"email":email,"password":phone});
      // print("LogRes:${response.body.contains("status\": \"ok")}");
      return response.body.contains("status\": \"ok");

    } catch (e) {print("loginExp:$e");
      
    }return false;
  }
  static Future deleteUser({required id})async{
    var uri=Uri.parse("${ConstantVals.http}/delete_data");
    try {
      httpp.Response res=await httpp.delete(uri,body: {"id":id.toString()});
      print("${res.body}");

    } catch (e) {print("Del Exp:$e");
      
    }
  }
}