import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(shape: const BeveledRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15))),
          title: const Text("Meterial App Bar",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          centerTitle: true,
          leading: const Icon(Icons.home,color: Colors.white),
          actions: const [
            Icon(Icons.ac_unit,size: 18,color: Colors.white,),
            Icon(Icons.more_horiz,color:Colors.white)
          ],
        ),
        backgroundColor: Colors.red,
    );
  }
}

//AppBar 2


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(2400, 230))),
            title: const Text("Profile",style: TextStyle(color: Colors.white),),
            backgroundColor: const Color(0xFF7FDF1A),
            centerTitle: true,
            leading: const Icon(Icons.arrow_back),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text("Edit",style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
    );
  }
}


//AppBar 3


class PageTitle extends StatefulWidget {
  const PageTitle({super.key});

  @override
  State<PageTitle> createState() => _PageTitleState();
}

class _PageTitleState extends State<PageTitle> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 60, 0, 151),
          title: const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text("Page title",style: TextStyle(color: Colors.white),),
          ),
          leading: const Icon(Icons.menu,color: Colors.white),
          actions: const [
            Icon(Icons.favorite,color: Colors.white),
            Padding(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Icon(Icons.search,color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.more_horiz_sharp,color: Colors.white),
            )
          ],
        ),
      );
  }
}