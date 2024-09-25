import 'package:flutter/material.dart';
import 'package:flutternewclass/network_method.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({super.key});

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  String getHobbies(length,List hobbies){
    String hobbie='';
    if(length==null){
      return hobbie;
    }else{
      for (var element in hobbies) {
        hobbie+="${element.toString()},";
      }
    return hobbie;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:FutureBuilder(
          future: NetworkMethod.getProduct(), 
          builder: (context, snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return CircularProgressIndicator();
          }
          if(snapshot.hasData){ 
            var data=snapshot.data;
            return ListView.builder(
              itemCount: data!.length,
              itemBuilder: (context, index) {
                var hobbies=data[index]["hobbies"];
              return ListTile(
                
                title: Text("${data[index]["fullName"]}"),
                subtitle: Text("${getHobbies(hobbies!.length, hobbies)}"),
                leading: Text("${data[index]["userId"]}"),
                trailing: Text("Followers :${data[index]["followersCount"]}"),
                );
            },
            );}else if(snapshot.hasError){
              return Text("Somthing Got ERROR");
            }else{
              return Text("No data");
            }
          },)
      ),
    );
  }
}
