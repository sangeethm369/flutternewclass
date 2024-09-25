import 'package:flutter/material.dart';

class Task01 extends StatefulWidget {
  const Task01({super.key});

  @override
  State<Task01> createState() => _Task01State();
}

class _Task01State extends State<Task01> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple,Colors.red],begin:Alignment.centerLeft,end: Alignment.centerRight )
              ),
              child:
              AppBar(
                backgroundColor: Colors.transparent,
                leading:
                const Icon(Icons.clear_rounded,color: Colors.white,),
                actions: [
                  TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      shape: const ContinuousRectangleBorder(side: BorderSide(width: 2,color: Colors.white))), 
                    child: const Text("save",style: TextStyle(color: Colors.white),))
                ],))),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10,left: 10,bottom: 20),
            child: CircleAvatar(
              radius: 60,child: ClipRRect(borderRadius:BorderRadius.circular(58) ,child: Image.asset("assets/images/ruby.png",fit: BoxFit.fill,),),
            ),
          ),const Padding(
            padding: EdgeInsets.only(top: 15.0,left: 20,right: 20),
            child: TextField(decoration: InputDecoration(label: Text("Name"),prefixIcon: Icon(Icons.person_outline))),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0,left: 20,right: 20),
            child: TextField(decoration: InputDecoration(label: Text("Birthday"),prefixIcon: Icon(Icons.calendar_month_outlined))),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0,left: 20,right: 20),
            child: TextField(decoration: InputDecoration(label: Text("Gender"),prefixIcon: Icon(Icons.transgender_outlined))),
          )
        ],
      ),
    );
  }
}
