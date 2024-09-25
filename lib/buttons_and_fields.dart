import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool  _abcd = true;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.cyanAccent,
          title: Text("AppName",style: TextStyle(fontSize: 12),),
        ),
        body: SingleChildScrollView(
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("user name",style: TextStyle(fontSize: 18),),
                  hintText: "user Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("email"),
                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ) ,
            ),
            Padding(
              padding:EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  label: Text("Address"),
                  prefixIcon:Icon(Icons.home),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                obscureText: _abcd,
                decoration: InputDecoration(
                  label: Text("password"),
                    prefixIcon:Icon(Icons.password),
                    suffixIcon:IconButton(onPressed: (){
                      setState(() {
                        _abcd=!_abcd;
                      });
                    }, icon: Icon(_abcd ? Icons.visibility_off:Icons.visibility)),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreenAccent,
                    foregroundColor: Colors.amberAccent,
                    minimumSize: Size(450, 50),
                    maximumSize: Size(500, 50)),
                child: Text("submit data",style: TextStyle(color: Colors.purple),)),
            Padding(
              padding: const EdgeInsets.only(left:300 ,top:10),
              child: TextButton(onPressed: (){},
                  style:TextButton.styleFrom(minimumSize: Size(200,50),maximumSize: Size(300,50)),
                  child: Text("forget password")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(onPressed: (){},
                  style:OutlinedButton.styleFrom(maximumSize: Size(500,50),minimumSize: Size(450,50)),
                  child: Text("signin with google",style: TextStyle(color: Colors.indigo),)),
            ),
           Padding(
             padding: const EdgeInsets.only(left: 50,top: 10),
             child: Row(children: [
               Text("already have an account"),
               TextButton(onPressed: (){}, child: Text("signin"))
             ],),
           )
          ]
                ),
        ),
      )
      ,
    );
  }
}
