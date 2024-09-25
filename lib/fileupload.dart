import 'dart:io';
import 'package:path/path.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:flutter/material.dart';

class FileUpload extends StatefulWidget {
  const FileUpload({super.key});

  @override
  State<FileUpload> createState() => _FileUploadState();
}

class _FileUploadState extends State<FileUpload> {
  List pickFile=[];
  pickFiles()async{
    var result =await FilePicker.platform.pickFiles(
      allowMultiple: true
    );
    print(result);
    if (result!=null) {
      setState(() {
        pickFile=result.files.map((file) =>File(file.path!)).toList();
      });
    }
  }
  OpenFiles(file){
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: pickFiles, 
            child: const Text("pick file",style: TextStyle(fontSize: 20),)),
            const SizedBox(height: 20),
            pickFile.isNotEmpty?ListView.builder(
              itemCount: pickFile.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => OpenFiles(pickFile[index]),
                  child: Card(
                    child: ListTile(
                      leading: returnLogo(pickFile[index]),
                      subtitle: Text('File:${pickFile[index].path}',style: const TextStyle(color: Colors.blue),),
                    ),
                  ),
                );
              },
              ):Container()
          ],
        ),
      ),

    );
  }
  returnLogo(file){
    var ex=extension(file.path);
    if(ex=='.jpg'){return const Icon(Icons.image,color: Colors.green,);}
    else if(ex=='.pdf'){return const Icon(Icons.picture_as_pdf_sharp,color: Colors.orange,);}
    else if(ex=='.mp3'){return const Icon(Icons.music_note,color: Colors.red,);}
    else if(ex=='.mp4'){return const Icon(Icons.video_file,color: Colors.red,);}
    else {return const Icon(Icons.question_mark,color: Colors.grey,);}
  }
}