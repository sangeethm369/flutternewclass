import 'package:flutter/material.dart';
import 'package:flutternewclass/models/networkmethod.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({super.key});

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:FutureBuilder(
          future: NetworkMethLocal.getData(), 
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {      
              if (snapshot.connectionState==ConnectionState.waiting) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasData) {
              var datas= snapshot.data!["data"];
              // print(datas);
              return ListView.builder(
                itemCount: datas.length,
                itemBuilder: (context, index) {
                  return  ListTile(
                    title: Text("${datas[index]["name"]}"),
                    subtitle: Text("${datas[index]["phone"]}"),
                    trailing:IconButton(onPressed: (){
                      NetworkMethLocal.deleteUser(id: datas[index]["id"]);
                      setState(() {
                      });
                    }, icon: const Icon(Icons.delete,color: Colors.red,)),
                  );
                },);
                
            }else{
              return const Text("no data");
            } },)
      ),
    );
  }
}

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  TextEditingController phone=TextEditingController();

  final _globalKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      body: Center(
        child: Form(
          key:_globalKey,
          child: Column(
            children: [
              TextFormField(
                controller: name,
                validator: (value) {
                  if (value==null||value.isEmpty) {
                    return "enter your name";
                  }
                  return null;
                },
                decoration: const InputDecoration(label: Text("name")),),
              const SizedBox(height: 10,),
              TextFormField(
                controller: email,
                validator: (value) {
                  if (value==null||value.isEmpty) {
                    return "enter your email";
                  }
                  return null;
                },
                decoration: const InputDecoration(label: Text("email")),),
              const SizedBox(height: 10,),
              TextFormField(
                controller: phone,
                validator: (value) {
                  if (value==null||value.isEmpty) {
                    return "enter your phone";
                  }
                  return null;
                },
                decoration: const InputDecoration(label: Text("phone")),),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                  if (_globalKey.currentState !.validate()) {
                    NetworkMethLocal.postData(name: name.text, email: email.text, phone: phone.text);
                   setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewProduct(),));
                   });
                  }
              }, 
              child: const Text("Register"))
            ],
          ),
        ),
      ),
    );
  }
}

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  TextEditingController email=TextEditingController();
  TextEditingController phone=TextEditingController();

  final _globalKey=GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Form(
        key: _globalKey,
        child: Column(
          children: [
            TextFormField(
              controller: email,
              decoration: const InputDecoration(hintText: "email"),
            ),
            const SizedBox(height: 10,),
            TextFormField(
              controller: phone,
              decoration: const InputDecoration(hintText: "password"),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: () async{
              var status=await NetworkMethLocal.userLogin(email: email.text, phone: phone.text);
              if (status== true ) {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ViewProduct(),));
                });
              }
            }, child: const Text("Login"))
          ],
        ),
      )
    );
  }
}