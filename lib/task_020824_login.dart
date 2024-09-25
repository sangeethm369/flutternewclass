import 'package:flutter/material.dart';

class LogInPg extends StatefulWidget {
  const LogInPg({super.key});

  @override
  State<LogInPg> createState() => _LogInPgState();
}

class _LogInPgState extends State<LogInPg> {
  bool _isShow=true;
  bool _isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xE7212237),
      appBar: AppBar(
        backgroundColor: const Color(0xE7212237),
        ),
      body: Padding(
        padding:  const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            const ListTile(title:Text("Log In",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize:50),),
              textColor: Colors.white,),
            Padding(
              padding:  const EdgeInsets.only(top: 10.0,bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle:  const TextStyle(color: Colors.white),
                    prefixIcon:  const Icon(Icons.person,color: Colors.white),
                  enabledBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.pink),borderRadius:BorderRadius.circular(80)),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(80),borderSide: const BorderSide(color: Colors.red,width: 2))
                )
              ),
            ),
            Padding(
              padding:  const EdgeInsets.only(top: 10.0,bottom: 10),
              child: TextField(
                obscureText: _isShow,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.pink),borderRadius: BorderRadius.circular(80)),                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red,width: 2,style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(80)),
                    hintText: "Password",hintStyle: const TextStyle(color: Colors.white),
                    prefixIcon: const Icon(Icons.lock,color: Colors.white),
                    filled: true,
                    fillColor: Colors.transparent,
                    suffix: TextButton(onPressed: (){
                      setState(() {
                        _isShow=!_isShow;
                      });
                    }, child: Text(_isShow?"Show":"Hide")))
              ),
            ),
            Padding(
              padding:  const EdgeInsets.only(top:8.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Checkbox(value: _isChecked, onChanged: (bool? value){
                    setState(() {
                      _isChecked=value!;
                    });
                  },side: const BorderSide(color: Colors.white),),
                  const Text("Remember me",style: TextStyle(color: Colors.white),),
                  const Spacer(),
                  const Text("Forget Password",style: TextStyle(color: Colors.red),)
                ],
              ),
            ),
            Padding(
                padding:  const EdgeInsets.only(top: 20.0,bottom: 15),
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80))),
                    child: const Text("Log In",style: TextStyle(color: Colors.white),))),
            Padding(
              padding:  const EdgeInsets.only(top: 70.0),
              child: Column(
                children: [
                  const Text("Or Sign in with",style: TextStyle(color: Colors.white)),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30,width: 30,child: Image.asset("assets/images/facebook.png",fit: BoxFit.fill,),),
                        SizedBox(height: 30,width: 30,child: Image.asset("assets/images/twitter.png",fit: BoxFit.fill),),
                        SizedBox(height: 30,width: 30,child: Image.asset("assets/images/google.png",fit: BoxFit.fill),),
                        SizedBox(height: 30,width: 30,child: Image.asset("assets/images/instagram.png",fit: BoxFit.fill),),

                  ]),
                  const Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account?  ",style: TextStyle(color: Colors.white)),
                      Text("Sign up",style: TextStyle(color: Colors.red),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
