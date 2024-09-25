import 'package:flutter/material.dart';


class RadioButtons extends StatefulWidget {
  const RadioButtons({super.key});

  @override
  State<RadioButtons> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButtons> {
  int _selected=1;
  bool _checkbox1=false;
  bool _checkbox2=false;
  bool _switch1=false;
  bool _switch2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("radio button"),
          backgroundColor: Colors.blue,
        ),
        body: 
        // ListView(
          // children: [
        //   ListTile(
        //     title: Text("list Title"),
        //     leading: Icon(Icons.person),
        //   ),
        //     ListTile(title: Text("list Title"),leading: Icon(Icons.person),
        //   ),
        //     ListTile(title: Text("list Title"),leading: Icon(Icons.person),
        //   ),
        //     Image.asset("image/sp.jpg")
        //   ],
        // ),





        Column(
          children: [
            Radio(
              value: 1, 
            groupValue: _selected, onChanged: (value) {
              setState(() {
                _selected=value!;
              });
            },),
            RadioListTile(
              value: 2, 
              groupValue: _selected,
              onChanged: (value){
              setState(() {
                _selected=value!;
                });
              },
              title: const Text("male"),activeColor: Colors.green,tileColor: Colors.deepPurpleAccent,),
              
            Checkbox(value: _checkbox1, 
            onChanged: (bool? value){
              setState(() {
                _checkbox1=value!;
              });
            }),
            CheckboxListTile(
                title: const Text("checkListTitle"),
                value: _checkbox2, onChanged: (bool? value){
              setState(() {
                _checkbox2=value!;
              });
            }),
            Switch(activeColor: Colors.green,inactiveThumbColor: Colors.red
            ,value: _switch1, onChanged: (bool value){
              setState(() {
                _switch1=value;
              });
            }),
            SwitchListTile(activeColor: Colors.amber,inactiveThumbColor: Colors.blue,inactiveTrackColor: Colors.brown,
              value: _switch2, 
              onChanged: (value){
              setState(() {
                _switch2=value;
              });
            })
          ],
        ),

    );
  }
}
