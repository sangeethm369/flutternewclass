import 'package:flutter/material.dart';
import 'package:flutternewclass/task_020824_amazonsignin.dart';

class AmazonCreate extends StatefulWidget {
  const AmazonCreate({super.key});

  @override
  State<AmazonCreate> createState() => _AmazonCreateState();
}

class _AmazonCreateState extends State<AmazonCreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text("amazon",style: TextStyle(fontSize: 34),),
            Text(".in",style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Create account",style: TextStyle(fontSize: 34),),
              const Padding(
                padding:  EdgeInsets.only(top: 8.0),
                child: Text("Your name"),
              ),
              const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder())),
              const Padding(
                padding:  EdgeInsets.only(top: 8.0),
                child: Text("Email"),
              ),
              const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder())),
              const Padding(
                padding:  EdgeInsets.only(top: 8.0),
                child: Text("Email again"),
              ),
              const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(),)),
              const Padding(
                padding:  EdgeInsets.only(top: 8.0),
                child: Text("Password"),
              ),
              const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),hintText:"at least 6 characters")),
              const Padding(
                padding:  EdgeInsets.only(top: 8.0),
                child: Text("Password again"),
              ),
              const TextField(
                  decoration: InputDecoration(border: OutlineInputBorder())),
              Padding(
                padding:  const EdgeInsets.only(top: 15.0,bottom: 15),
                child: Center(
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,shape: const BeveledRectangleBorder(side: BorderSide(width: 1,color: Colors.amber))),
                    child: const Text("Create your Amazon account")),
                )),
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    const Text("Already have an account?"),
                    Tooltip(
                      message: "this is sign in",
                      child: 
                   TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AmazonLogin()));
                   }, child:const Text("Sign in",style: TextStyle(color: Colors.blue),)))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
