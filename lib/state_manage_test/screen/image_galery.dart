import 'package:flutter/material.dart';
import 'package:flutternewclass/state_manage_test/utilities/controllers/image_controllers.dart';
import 'package:provider/provider.dart';

class ImageGalery extends StatelessWidget {
  const ImageGalery({super.key});

  @override
  Widget build(BuildContext context) {
    // print("object");
    return Scaffold(
      body: Consumer<MultyImagePicker>(builder: (BuildContext context, MultyImagePicker value, Widget? child) { 
        return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 120),
        itemCount: value.file.length,
        itemBuilder:(context, index) {
          return Card(child: Image.file(value.file[index]),);
        },
        );},
       ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Provider.of<MultyImagePicker>(context,listen: false).imagePicker();
      },
        child: const Icon(Icons.add_photo_alternate_outlined),),
    );
  }
}