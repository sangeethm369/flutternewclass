import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}
class _AppState extends State<App> {
  String name="sam";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text("APP TITTLE",style: TextStyle(color: Colors.deepOrange,fontSize: 32,backgroundColor: Colors.lightGreenAccent),),
        centerTitle: true,
        leading: const Icon(Icons.person),
        actions: const [
          Icon(Icons.cached_rounded),
          Icon(Icons.dark_mode)],
      ),

      body: Column(
        children: [
          Text(name),
          ElevatedButton(onPressed: (){
            setState(() {
              name= "Press again";
            });
          }, child: const Text("submit"))
        ],
      ),
    );
  }
}
