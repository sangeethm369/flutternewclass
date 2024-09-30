import 'package:flutter/material.dart';
import 'package:flutternewclass/state_manage_test/screen/counter_app_page1.dart';
import 'package:flutternewclass/state_manage_test/utilities/controllers/count_controllers.dart';
import 'package:flutternewclass/state_manage_test/utilities/controllers/image_controllers.dart';
import 'package:provider/provider.dart';

class CounterAppPage2 extends StatelessWidget {
  const CounterAppPage2({super.key});

  @override
  Widget build(BuildContext context) {
    var imageFile=Provider.of<ImagePickerController>(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(Provider.of<CountController>(context).count.toString()),
            SizedBox(child: CircleAvatar(backgroundImage:imageFile.file==null?AssetImage('assets/images/Cappuccino.jpg'):FileImage(imageFile.file!),),height: 200,),
          ],
        ),
      ),
      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            Provider.of<CountController>(context,listen: false).decrement();
            },
            child: const Icon(Icons.add),),
            FloatingActionButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CounterAppPage1(),));
            },
            child: const Icon(Icons.arrow_back),),
        ],
      ),
    );
  }
}