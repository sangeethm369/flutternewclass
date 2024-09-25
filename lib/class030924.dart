import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Class030924 extends StatefulWidget {
  const Class030924({super.key});

  @override
  State<Class030924> createState() => _Class030924State();
}

class _Class030924State extends State<Class030924> {
  late WebViewController webViewController;
  @override
  void initState() {
    super.initState();
    webViewController=WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse("https://www.flipkart.com/"));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:WebViewWidget(controller: webViewController)
      ),
    );
  }
}

class Requsting extends StatefulWidget {
  const Requsting({super.key});

  @override
  State<Requsting> createState() => _RequstingState();
}

class _RequstingState extends State<Requsting> {
  List<List<String>> userDetail=[
    ["User004","_user004_"],["User005","_user005_"],
    ["User006","_user006_"],["User007","_user007_"],
    ["User008","_user008_"],["User009","_user009_"],
    ["User010","_user010_"],["User011","_user011_"],
    ["User012","_user012_"],["User013","_user013_"],
    ["User014","_user014_"],["User015","_user015_"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Friend Requests",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))
        ],
        backgroundColor: const Color.fromARGB(255, 173, 173, 173),
      ),
      body:Center(
        child: ListView.builder(
          itemCount: userDetail.length,
          itemBuilder: (context, index) {
            return ListTile(minTileHeight: 50,tileColor: Colors.black,
              title:  Text(userDetail[index][0],maxLines: 1,),titleTextStyle: const TextStyle(color: Colors.white),
              subtitle: Text(userDetail[index][1],maxLines: 1,),subtitleTextStyle: const TextStyle(color: Color.fromARGB(246, 145, 145, 145)),
              leading: Container(height: 50,width: 50,
                decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Cappuccino.jpg"),fit: BoxFit.fill),shape: BoxShape.circle,),
              ),
              horizontalTitleGap: 15,
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              trailing:FittedBox(
                child: Row(
                  children: [
                    ElevatedButton(onPressed: (){
                      userDetail.removeAt(index);
                      setState(() {
                        
                      });
                    },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))), child: const Text("accept",style: TextStyle(color: Colors.white))),
                    const SizedBox(width: 4,),
                    ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(137, 172, 172, 172),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))), child: const Text("delete",style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal)),)
                  ],
                ),
              )
            );
          },
        ),
      )
    );
  }
}


class Class050924 extends StatefulWidget {
  const Class050924({super.key});

  @override
  State<Class050924> createState() => _Class050924State();
}

class _Class050924State extends State<Class050924> {
  final Uri _uri = Uri.parse('https://www.amazon.in/');
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: TextButton(onPressed: _longing, child: const Text("https://www.flipkart.com/")),
        child: Link(
          uri: _uri,
          builder: (context, followLink){
            return InkWell(
              onTap: followLink,
              child: const Text("Amazon.in",style: TextStyle(color: Colors.blue,decorationColor: Colors.blue,decoration: TextDecoration.underline),));
          }),
      ),
    );
  }
}