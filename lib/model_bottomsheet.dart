 import 'package:flutter/material.dart';

class BModel extends StatefulWidget {
  const BModel({super.key});

  @override
  State<BModel> createState() => _BModelState();
}

class _BModelState extends State<BModel> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // body: Column(
      //   children: [
      //     ElevatedButton(onPressed: (){
      //       showModalBottomSheet(context: context, builder: (context) {
      //         return Column(
      //           children: 
      //             ListTile(title: Text("Nothing"),),
      //             Text("Good sdfghjkljhgyfdfghjklkjhgfdtfyuhij"),
      //             Text("Bad")
      //           ],
      //         );
      //       },);
      //     }, child: Text("click this")),
      //   ],
      // ),
      body: ExpansionTile(
        title: Text("Sangeeth"),
        children: [
          ListTile(title: Text("Name:Sangeeth"),),
          ListTile(title: Text("Age:21"),),
          ListTile(title: Text("Address:PKD"),),
        ],
        ),
    );
  }
}