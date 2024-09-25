import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Register",style: TextStyle(color: Colors.white),),
          backgroundColor:Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.all(20),
            child: Text("Registeration Form",style: TextStyle(color: Colors.purple,fontSize: 32,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.only(left: 19,top: 20,right: 19),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text("user name"),
                  hintText: "enter user name",
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(19),)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 19,top: 20,right: 19),
              child: TextField(
                decoration: InputDecoration(
                    label: const Text("Email"),
                    hintText: "you@gmail.com",
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    )
                ),
              ),
            ),
            Padding(
                padding:const EdgeInsets.all(20),
            child:TextField(
              decoration: InputDecoration(
                label: const Text("Address"),
                hintText:"home ,area ,city",
                  prefixIcon:const Icon(Icons.home),
                  border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18)
              )
              ))
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                label:Text("password"),
                hintText: "password",
                prefixIcon: Icon(Icons.password),
              ),
            )
          ],
        ),
      ),
    );
  }
}
