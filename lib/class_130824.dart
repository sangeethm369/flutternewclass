import 'package:flutter/material.dart';
import 'package:flutternewclass/class240824.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Class130824 extends StatefulWidget {
  const Class130824({super.key});

  @override
  State<Class130824> createState() => _Class130824State();
}

class _Class130824State extends State<Class130824> {
  // final TextEditingController _name=TextEditingController();
  // final TextEditingController _password=TextEditingController();
  // final TextEditingController _age=TextEditingController();

  // final _formkey = GlobalKey<FormState>();
  _setData(value)async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setInt("count", value);
  }
  _setLog(value)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    pref.setBool("loginval", value);
  }
  



  @override
  void initState() {
    _getData();
    super.initState();
  }
  Future<void>  _getData()async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    _value= preferences.getInt("count")??0;
    setState(() {
      
    });

  }

  int _value=0;
  bool _isLogged=true;
  void _increasing(){
  setState(() {
    _value++;
     _setData(_value);
  });
  }
  void _decreaing(){
  setState(() {
    _value--;
     _setData(_value);
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue.shade200,leading: IconButton(onPressed: (){
        _isLogged=!_isLogged;
        setState(() {
          _setLog(_isLogged);
          Navigator.push(context, MaterialPageRoute(builder: (context) => Class240824(),));
        });
      }, icon: Icon(Icons.exit_to_app)),),
      body: Center(child: Text("Count:$_value"),),





      // body: Center(
      //   child: Stack(
      //     children: [
      //       Container(
      //         height: 300,
      //         width: 300,
      //         color: Color.fromARGB(255, 187, 187, 187),
      //         child: Center(child: Text("Count:$_value")),
              
      //       ),
      //       // Positioned(
      //       //   left: 50,
      //       //   top: 50,
      //       //   child: Container(
      //       //     width: 50,
      //       //     height: 50,
      //       //     color: Colors.red,
      //       //     child: Text("date1"),
      //       //   ),
      //       // ),
      //       // Positioned(
      //       //   top: 50,
      //       //   right: 50,
      //       //   child: Container(
      //       //     height: 50,
      //       //     width: 50,
      //       //     color: Colors.amber,
      //       //     child: Text("2"),
      //       //   ),
      //       // ),
      //       // Positioned(
      //       //   bottom: 50,
      //       //   right: 50,
      //       //   child: Container(
      //       //     height: 50,
      //       //     width: 50,
      //       //     color: Colors.purple,
      //       //     child: Text("2"),
      //       //   ),
      //       // ),
      //       // Positioned(
      //       //   bottom: 50,
      //       //   left: 50,
      //       //   child: Container(
      //       //     height: 50,
      //       //     width: 50,
      //       //     color: Colors.green,
      //       //     child: Text("2"),
      //       //   ),
      //       // )
      //     ],
      //   ),
      // ),
      // body: Form(
      //   key: _formkey,
      //   child: Column(
      //     children: [
      //       TextFormField(
      //         controller: _name,
      //         decoration: InputDecoration(label: Text("Name")),
      //         validator: (value) {
      //           if(value==Null||value!.isEmpty){
      //             return "Please Enter your Name";
      //           }
      //           return null;
      //         },
      //       ),
      //       TextFormField(
      //         controller: _age,
      //         decoration: InputDecoration(
      //           label: Text("Your Age"),
      //         ),
      //         validator: (value) {
      //           if(value==null||value.isEmpty){
      //             return "enter Your age ";
      //           }
      //           if(int.parse(value)<=0){
      //             return "enter valid Age ";
      //           }
      //           return null;
      //         },
      //       ),
      //       TextFormField(
      //         controller: _password,
      //         decoration: InputDecoration(
      //           label: Text("Password")
      //         ),
      //         validator: (value) {
      //           if(value==null||value.isEmpty){
      //             return "Please enter a password";
      //           }
      //           if(value.length<8){
      //             return "pasword must be more than 8 character";
      //           }
      //           return null;
      //         },
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ElevatedButton(onPressed: (){
      //           if(_formkey.currentState!.validate()){
      //             print("Name:${_name.text}");
      //             print("Age:${_age.text}");
      //             print("password:${_password.text}");
      //           }
      //         }, child: Text("done")),
      //       )
      //     ],
      //   )),

      // body: Column(
      //   children: [
      //     TextField(
      //       controller: _name,
      //       decoration: InputDecoration(label: Text("Name")),
      //     ),
      //     TextField(
      //       controller: _password,
      //       decoration: InputDecoration(label: Text("Password")),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: ElevatedButton(onPressed: (){
      //         print("Name:${_name.text}");
      //         print("Password:${_password.text}");
      //       }, child: Text("sign")),
      //     )
      //   ],
      // ),
      // body:GridView.count(
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   padding: EdgeInsets.all(8),
      //   crossAxisCount: 2,
      //   children: [
      //     Container(color: Colors.green,
      //       child: Text("$_value"),
      //     ),
      //     Container(color: Colors.pink,
      //       child: Text("$_value"),
      //     ),
      //     Container(color: Colors.red,
      //       child: Text("$_value"),
      //     ),
      //     Container(
      //       color: Colors.orangeAccent,
      //       child: Text("$_value"),
      //     ),
      //     Container(
      //       color: Colors.blueAccent,
      //       child: Text("$_value"),
      //     ),
      //     Container(color: Colors.purple,
      //       child: Text("$_value"),
      //     ),

      //   ],),
      
      floatingActionButton: Row(
        children: [
          SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: (){
              // _value++;
              _increasing();
              setState(() {
                // _setData(_value);
                
              });
            },

            child: Text("+"),
            ),
            FloatingActionButton(onPressed: (){
              // _value--;
              _decreaing();
              setState(() {
                // _setData(_value);
                
              });
            },
            child: Text("-"),)
        ],
      ),
    );
  }
}