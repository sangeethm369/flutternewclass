import 'package:flutter/material.dart';
import 'package:flutternewclass/state_manage_test/model/user_api_metod.dart';
import 'package:url_launcher/link.dart';

class ItemViewer extends StatefulWidget {
  const ItemViewer({super.key});

  @override
  State<ItemViewer> createState() => _ItemViewerState();
}

class _ItemViewerState extends State<ItemViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: UserApiMetod().getUserData(), 
          builder: (context, snapshot) {
            if (snapshot.connectionState==ConnectionState.waiting) {
              return const CircularProgressIndicator(
                color: Colors.amber,
              );
            }
            if (snapshot.hasData) {
              var data=snapshot.data!;
              
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index].movie),
                    subtitle: Link(
                      uri: Uri.parse(data[index].imdbUrl), 
                      builder: (context, followLink) => InkWell(onTap: followLink,child: Text(data[index].imdbUrl),),
                      ),
                    leading: Text("${data[index].id}"),
                  );
                },
                );
            }else{
              return const Text("No data");
            }
          },)
        ),
    );
  }
}