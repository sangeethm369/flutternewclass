import 'package:flutter/material.dart';
import 'package:flutternewclass/class290824.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Class240824 extends StatefulWidget {
  const Class240824({super.key});

  @override
  State<Class240824> createState() => _Class240824State();
}

class _Class240824State extends State<Class240824> {
  _setLog(value)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    pref.setBool("loginval", value);
  }
  bool _isLogged=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black),),
            const SizedBox(height: 10,),
            const TextField(decoration: InputDecoration(label: Text("Email")),),
            const SizedBox(height: 10,),
            const TextField(decoration: InputDecoration(label: Text("Password")),),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              _isLogged=!_isLogged;
              setState(() {
                _setLog(_isLogged);
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Class290824(),));
              });
            }, child: const Text("Login"))
        
          ],
        ),
      ),
    );
  }
}