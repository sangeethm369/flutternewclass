import 'package:flutter/material.dart';

class Class0608 extends StatefulWidget {
  const Class0608({super.key});

  @override
  State<Class0608> createState() => _Class0608State();
}

class _Class0608State extends State<Class0608> {
  // List<String>_list=["a","b","c"];
  // List<String>_listMonths=["January","feb","march","april","may","june","july","august","september","october","november","december"];
  // String? onSelect;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6A6767),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA69F9F),
        title:const Text("Appbar"),centerTitle: true,
      ),
      //DropDown
      // body: Center(
      //   child: DropdownButton(
      //     value: onSelect,
      //       hint: Text("Select any"),
      //       items: _list.map((String item){
      //         return DropdownMenuItem(
      //           value: item,
      //             child: Text(item));
      //       }).toList(),
      //       onChanged: (String? newValue){
      //       setState(() {
      //         onSelect=newValue;
      //       });
      //       }),
      // ),
      //Dropdown in TextField
      // body: Column(
      //   children: [
      //      DropdownButtonFormField(
      //       value: onSelect,
      //         hint: Text("Select Month"),
      //         items: _listMonths.map((String months){
      //       return DropdownMenuItem(
      //         value: months,
      //           child: Text(months));
      //     }).toList(),
      //         onChanged: (String? newVal){
      //       setState(() {
      //         onSelect=newVal;
      //       });
      //     }),
      //   ],
      // ),
      // AlertBox && Navigator pop
      body:Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  elevation: 6,backgroundColor: Colors.blue,
                  shadowColor: Colors.red,
                  title: const Text("Warning"),
                  content: const Text("This is Fun Right"),
                  actions: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                    TextButton(onPressed: (){
                     Navigator.pop(context);
                    }, child: const Text("No")),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: const Text("Yes")),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.minimize))
                  ],);
              },);
        }, child: const Text("click",style: TextStyle(color: Colors.red))),
      ),
    );
  }
}
