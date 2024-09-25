import 'package:flutter/material.dart';
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    String name="sangeeth";
    return Scaffold(
      body: Column(
        children: [
          Text(name),
          ElevatedButton(onPressed: (){}, child: const Text("Submit"))
        ],
      ),

    );
  }
}
