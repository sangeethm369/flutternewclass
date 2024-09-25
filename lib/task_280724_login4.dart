import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Row(children: [Icon(Icons.arrow_back,color:Colors.white),Text("Back",style:TextStyle(color: Colors.white),)],),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Color(0xDF1F1F25),
        body: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0,top:50),
                  child: Container(alignment:Alignment.centerLeft,
                      child: Text("Reset password",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 8,bottom: 8),
                  child: Container(alignment:Alignment.centerLeft,
                      child: Text("Forget your password? that's okay. It happens everyone!\nPlease provide your email to reset your password.",
                        style: TextStyle(color: Colors.white),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        label: Text("Email"),
                        prefixIcon: Icon(Icons.email_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.black
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 38),
                  child: ElevatedButton(onPressed: (){},
                    child: Text("Send Instruction",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black,minimumSize: Size(480, 60),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Row(
                  crossAxisAlignment:CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.white)),
                    Text("+",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Color(
                        0xFF3800A8)))
                  ],),
          ]
          ),
        ),
      ),
    );
  }
}
