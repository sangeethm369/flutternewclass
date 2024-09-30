import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutternewclass/firebase_options.dart';
import 'package:flutternewclass/state_manage_test/model/post_model_method.dart';
import 'package:flutternewclass/state_manage_test/screen/post_replays.dart';
import 'package:flutternewclass/state_manage_test/utilities/controllers/count_controllers.dart';
import 'package:flutternewclass/state_manage_test/utilities/controllers/image_controllers.dart';
import 'package:provider/provider.dart';




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,); 
  
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context)=>CountController(),),
        ChangeNotifierProvider(create: (BuildContext context)=>ImagePickerController(),),
        ChangeNotifierProvider(create: (BuildContext context)=>MultyImagePicker(),),
        ChangeNotifierProvider(create: (BuildContext context)=>PostModelMethod(),),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PostReplays(),
      ),
    );
  }
}

