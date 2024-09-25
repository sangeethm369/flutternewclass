import 'package:flutter/material.dart';

//Sign in white
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isOn=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Hey there,",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Welcome Back",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    label: const Text("Email"),
                    prefixIcon: const Icon(Icons.email_outlined),
                    border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.black12
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: _isOn,
                  decoration: InputDecoration(
                      label: const Text("Password"),
                      prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _isOn=!_isOn;
                      });
                    }, icon:Icon(_isOn?Icons.visibility_off:Icons.visibility) ),
                      border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: (){},
                    child: const Text("Forget your password?",
                        style: TextStyle(decoration: TextDecoration.underline)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 45,bottom: 50),
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent,minimumSize: const Size(450, 50)),
                  child: const Text("Login",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),),
              ),
              const Row(crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900)),
                Text("+",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.deepPurple))
              ],),
              const Row(crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't have an account yet?"),
                Text("Register",style: TextStyle(color: Colors.purpleAccent))
              ],)
            ],
          ),
        )
      );
  }
}


//Sign up white

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  bool _isOn=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Hey there.",style: TextStyle(fontSize: 18)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Create an Account",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: const Text("First Name"),
                      prefixIcon: const Icon(Icons.person_outlined),
                      border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black12
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: const Text("Last Name"),
                      prefixIcon: const Icon(Icons.person_outlined),
                      border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black12
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: const Text("Email"),
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black12
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: _isOn,
                  decoration: InputDecoration(
                    label: const Text("Password"),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _isOn=!_isOn;
                      });
                    }, icon:Icon(_isOn?Icons.visibility_off:Icons.visibility) ),
                    border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: _isOn,
                  decoration: InputDecoration(
                    label: const Text("Confirm Password"),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _isOn=!_isOn;
                      });
                    }, icon:Icon(_isOn?Icons.visibility_off:Icons.visibility) ),
                    border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 30,bottom: 38),
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(
                      0xFF8043FD),minimumSize: const Size(450, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  child: const Text("Register",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              const Row(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900)),
                  Text("+",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.deepPurple))
                ],),
              const Row(crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  Text("Login",style: TextStyle(color: Colors.purpleAccent))
                ],)
            ],
          ),
        ),
  
    );
  }
}


//Sign up


class CreateBlack extends StatefulWidget {
  const CreateBlack({super.key});

  @override
  State<CreateBlack> createState() => _CreateBlackState();
}

class _CreateBlackState extends State<CreateBlack> {
  bool _isOn=true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xDF1F1F25),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Text("Hey there.",style: TextStyle(fontSize: 18,color: Colors.white)),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Create an Account",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: const Text("First Name"),
                      prefixIcon: const Icon(Icons.person_outlined),
                      border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: const Text("Last Name"),
                      prefixIcon: const Icon(Icons.person_outlined),
                      border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      label: const Text("Email"),
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.black
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: _isOn,
                  decoration: InputDecoration(
                    label: const Text("Password"),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _isOn=!_isOn;
                      });
                    }, icon:Icon(_isOn?Icons.visibility_off:Icons.visibility) ),
                    border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.black,
                  ),
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: _isOn,
                  decoration: InputDecoration(
                    label: const Text("Confirm Password"),
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _isOn=!_isOn;
                      });
                    }, icon:Icon(_isOn?Icons.visibility_off:Icons.visibility) ),
                    border: UnderlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide.none),
                    filled: true,
                    fillColor: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 30,bottom: 38),
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black,minimumSize: const Size(480, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                child: const Text("Register",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              const Row(
                crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.white)),
                  Text("+",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Color(
                      0xFF3800A8)))
                ],),
              const Row(crossAxisAlignment:CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyle(color: Colors.white),),
                  Text("Login",style: TextStyle(color: Colors.purpleAccent))
                ],)
            ],
          ),
        ),
      ),
    );
  }
}



//Reset Password

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
          leading: const Row(children: [Icon(Icons.arrow_back,color:Colors.white),Text("Back",style:TextStyle(color: Colors.white),)],),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: const Color(0xDF1F1F25),
        body: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0,top:50),
                  child: Container(alignment:Alignment.centerLeft,
                      child: const Text("Reset password",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white))),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,top: 8,bottom: 8),
                  child: Container(alignment:Alignment.centerLeft,
                      child: const Text("Forget your password? that's okay. It happens everyone!\nPlease provide your email to reset your password.",
                        style: TextStyle(color: Colors.white),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        label: const Text("Email"),
                        prefixIcon: const Icon(Icons.email_outlined),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.black
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8,top: 10,bottom: 38),
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.black,minimumSize: const Size(480, 60),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  child: const Text("Send Instruction",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
                const Row(
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
