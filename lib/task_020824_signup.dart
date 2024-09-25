import 'package:flutter/material.dart';

class SignUpPg extends StatefulWidget {
  const SignUpPg({super.key});

  @override
  State<SignUpPg> createState() => _SignUpPgState();
}

class _SignUpPgState extends State<SignUpPg> {
  bool _isShow=true;
  bool _isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xE7212237),
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding:  const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const Text("Sign Up",style: TextStyle(color: Colors.white,fontSize: 48),),
              Padding(
                padding:  const EdgeInsets.only(top: 20.0,bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Flexible(child: TextField(
                      decoration: InputDecoration(
                          hintText: "First Name",
                          hintStyle: const TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.pink),
                              borderRadius: BorderRadius.circular(80)),border: OutlineInputBorder(borderRadius: BorderRadius.circular(80),borderSide: const BorderSide(color: Colors.red))),)),
                    const SizedBox(width:5),
                    Flexible(child: TextField(
                      decoration: InputDecoration(
                          hintText: "Last Name",
                          hintStyle: const TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.pink),
                              borderRadius: BorderRadius.circular(80)),border: OutlineInputBorder(borderRadius: BorderRadius.circular(80),borderSide: const BorderSide(color: Colors.red))),)),
                  ]
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(top: 10.0,bottom: 10),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle:  const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.pink),borderRadius: BorderRadius.circular(80)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(80),
                            borderSide:  const BorderSide(color: Colors.red,width: 2))
                    )
                ),
              ),

              Padding(
                padding:  const EdgeInsets.only(top: 10.0,bottom: 10),
                child: TextField(
                    obscureText: _isShow,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(80)),
                            enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.pink),borderRadius: BorderRadius.circular(80)),
                            hintText: "Password",
                            hintStyle: const TextStyle(color: Colors.white),
                            suffix: TextButton(onPressed: (){
                          setState(() {
                            _isShow=!_isShow;
                          });
                        }, child: Text(_isShow?"Show":"Hide")))
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(top: 10.0,bottom: 10),
                child: TextField(
                    obscureText: _isShow,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(80)),
                        enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.pink),borderRadius: BorderRadius.circular(80)),
                        hintText: "Password",hintStyle: const TextStyle(color: Colors.white),
                        suffix: TextButton(onPressed: (){
                          setState(() {
                            _isShow=!_isShow;
                          });
                        }, child: Text(_isShow?"Show":"Hide")))
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(top: 10.0,bottom: 10),
                child: Row(
                  children: [
                    Checkbox(value: _isChecked, onChanged: (bool?value){
                      setState(() {
                        _isChecked=value!;
                      });
                    },side: const BorderSide(color: Colors.white)),
                    const Text("I Agree with ",style: TextStyle(color: Colors.white),),
                    const Text("privacy ",style: TextStyle(color: Colors.red)),
                    const Text("and ",style: TextStyle(color: Colors.white)),
                    const Text("policy ",style: TextStyle(color: Colors.red)),
                  ],),),
              Padding(
                  padding:  const EdgeInsets.only(top: 20.0,bottom: 15),
                  child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80))),
                      child: const Text("Sign up",style: TextStyle(color: Colors.white),))),
              Padding(
                padding:  const EdgeInsets.only(top:35.0),
                child: Container(
                  alignment: Alignment.center,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ",style: TextStyle(color: Colors.white)),
                      Text("Sign in ",style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
