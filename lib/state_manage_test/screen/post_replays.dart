import 'package:flutter/material.dart';
import 'package:flutternewclass/state_manage_test/model/post_model_method.dart';
import 'package:flutternewclass/state_manage_test/utilities/controllers/post_controller.dart';
import 'package:provider/provider.dart';
class PostReplays extends StatelessWidget {
  const PostReplays({super.key});

  @override
  Widget build(BuildContext context) {
    var obj=Provider.of<PostController>(context);
    return Scaffold(
      body: Stack(
        children: [
          Container(decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Cappuccino.jpg"))),),
          Positioned(
            bottom: 10,left: 10,
            child: IconButton(onPressed: (){
              Provider.of<PostController>(context,listen: false).getPost();
            showModalBottomSheet(
              context: context, 
              builder: (context) {
                return FutureBuilder(
                  future: PostModelMethod().getPosts(), 
                  builder: (context, snapshot) {
                    if (snapshot.connectionState==ConnectionState.waiting) {
                      return const CircularProgressIndicator(
                        color: Colors.amber,);
                        }
                    if (snapshot.hasData) {
                      // var data=snapshot.data!;
                      return ListView.builder(
                        itemCount: obj.list.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text("user${obj.list[index].userId}"),
                            subtitle: Text(obj.list[index].title),
                            );
                            },);
                            }else{
                              return const Text("No data");}
                    },);
              },);
          }, icon: const Icon(Icons.message)))
        ],
      ),
    );
  }
}

class PostReplays2 extends StatelessWidget {
  const PostReplays2 ({super.key});

  @override
  Widget build(BuildContext context) {
    var obj=Provider.of<PostController>(context);
    Provider.of<PostController>(context,listen: false).getPost();
    return Scaffold(
      body:Stack(
        children: [
          Image.asset("assets/images/Cappuccino.jpg"),
          Positioned(bottom: 10,right: 10,
            child: IconButton(onPressed: (){
              
               var data=obj.list;
              showModalBottomSheet(
                context: context, 
                builder: (context) {
                 
                  print(data.length);
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      
                      return ListTile(
                        title: Text("${data[index].userId}"),
                      );
                    },
                    );
                },
                );
            }, icon: const Icon(Icons.message,color: Colors.white,))
            )
        ],
      )
    );
  }
}