import 'package:flutter/material.dart';
import 'package:flutternewclass/state_manage_test/utilities/custom_widget/custom_appbar.dart';
import 'package:flutternewclass/state_manage_test/utilities/custom_widget/custom_text_form_field.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController name=TextEditingController();
  TextEditingController age=TextEditingController();
  TextEditingController safe=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(name: "Model"),
      body:Center(
        child:Column(
          children:[
            const Text("Register",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
            const SizedBox(height:10),
            customTextFormField(hint: "name",tec: name),
            const SizedBox(height:10),
            customTextFormField(hint:"Age",tec: age),
            const SizedBox(height: 10,),
            CustomTextFormFields(hint: "safe",ctr: safe,),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              print("${name.text}\n${age.text}\n${safe.text}");
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo)
            , child: const Text("Register"))
          ]
        )
      )
      
    );
  }
}


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController name=TextEditingController();
  TextEditingController age=TextEditingController();
  TextEditingController safe=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarCustom(name: "Model"),
      body:Center(
        child:Column(
          children:[
            const Text("Log In",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
            const SizedBox(height:10),
            customTextFormField(hint: "username",tec: name),
            const SizedBox(height:10),
            CustomTextFormFields(hint: "safe",ctr: safe,),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              print("${name.text}\n${age.text}\n${safe.text}");
            }, child: const Text("Login"))
          ]
        )
      )
      
    );
  }
}