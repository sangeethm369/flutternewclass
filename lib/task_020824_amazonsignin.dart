import 'package:flutter/material.dart';
import 'package:flutternewclass/task_020824_amazonsignup.dart';


class AmazonLogin extends StatefulWidget {
  const AmazonLogin({super.key});

  @override
  State<AmazonLogin> createState() => _AmazonLoginState();
}

class _AmazonLoginState extends State<AmazonLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text("amazon",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            Text(".in",style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15),
        child: ListView(
          children: [
            const Text("Login",style: TextStyle(fontSize: 34),),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text("Email or mobile phone number"),
            ),
            const SizedBox(height: 30,
                child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()))),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Password"),
                  Text("Forget Password")])),
            const SizedBox(height: 30,
                child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()))),
            Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 15),
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow,shape: BeveledRectangleBorder(side: const BorderSide(width: 0.5,style: BorderStyle.none),borderRadius: BorderRadius.circular(2)),shadowColor: Colors.black26,elevation: 2),
                    child: const Text("Login"))),
            const Row(
              children: [
                Expanded(child: Divider()),
                Text("New to Amozon?"),
                Expanded(child: Divider())]),
            Padding(
                padding: const EdgeInsets.only(top: 20.0,bottom: 15),
                child: ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AmazonCreate()));
                },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white54,
                        shape: BeveledRectangleBorder(side: const BorderSide(width: 0.5,color: Colors.black26),
                            borderRadius: BorderRadius.circular(2))), 
                    child: const Text("I am a new customer"))),
            const Wrap(
              children: [
                Text("By signing in you are agreeing to our "),
                Text("Conditions of Use and Sale ",style: TextStyle(color: Colors.blue),),
                Text("and our "),
                Text("Privacy Notice ",style: TextStyle(color: Colors.blue)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
