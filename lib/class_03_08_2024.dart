import 'package:flutter/material.dart';

class Class03082024 extends StatefulWidget {
  const Class03082024({super.key});

  @override
  State<Class03082024> createState() => _Class03082024State();
}

class _Class03082024State extends State<Class03082024> {
  // List<String>_list=List.generate(12,  (index) => "List$index");
  int _currentIndex=0;
  final List<Widget>_list02=[
     const Add(),
     const Home(),
     const Balance()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: const Text("appbar"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.purple,
        child: ListView(
          children: [
            ListTile(
              title: Text("1 st"),
            ),
            ListTile(
              title: Text("2 st"),
            ),
          ],
        ),
      ),
      // body: ListView.builder(
      //   itemCount: _list.length,
      //   itemBuilder: (context, index) {
      //   return ListTile(
      //     title: Text(_list[index]),
      //   );
      // },),
      body: _list02[_currentIndex],

    bottomNavigationBar:  BottomNavigationBar(
       selectedItemColor: Colors.green,
      unselectedItemColor: Colors.red,
      selectedFontSize: 18,
      unselectedFontSize: 10,
      currentIndex: _currentIndex,
      onTap:(value) {
        setState(() {
          _currentIndex=value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.add),label: "add"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),label: "balance"),
      ],
    ),
    );
  }
}

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 211, 211),
      body: Center(
        child: Text("Add"),
      ),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 116, 116, 116),
      body: Center(
        child: Text("Home"),
      ),
    );
  }
}

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 66, 66, 66),
      body: Center(
        child: Text("Balance"),
      ),
    );
  }
}
