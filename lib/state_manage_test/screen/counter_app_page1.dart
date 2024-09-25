import 'package:flutter/material.dart';
import 'package:flutternewclass/state_manage_test/screen/counter_app_page2.dart';
import 'package:flutternewclass/state_manage_test/utilities/constants/controllers.dart';
import 'package:provider/provider.dart';

class CounterAppPage1 extends StatefulWidget {
  const CounterAppPage1({super.key});

  @override
  State<CounterAppPage1> createState() => _CounterAppPage1State();
}

class _CounterAppPage1State extends State<CounterAppPage1> {
  @override
  Widget build(BuildContext context) {
    var imageFile=Provider.of<ImagePickerController>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(Provider.of<CountController>(context).count.toString()),
            CircleAvatar(backgroundImage:imageFile.file==null?const AssetImage('assets/images/Cappuccino.jpg'):FileImage(imageFile.file!),radius: 100,),
          
          ],
        ),
      ),
      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            Provider.of<CountController>(context,listen: false).increament();
            },
            child: const Icon(Icons.add),),
            FloatingActionButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CounterAppPage2(),));
            },
            child: const Icon(Icons.arrow_forward),),
            FloatingActionButton(onPressed: (){
              Provider.of<ImagePickerController>(context,listen: false).imagePicker();
            },child: Text("add"),)
        ],
      ),
    );
  }
}