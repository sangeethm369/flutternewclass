import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

// class GoogleMaps extends StatefulWidget {
//   const GoogleMaps({super.key});

//   @override
//   State<GoogleMaps> createState() => _GoogleMapsState();
// }

// class _GoogleMapsState extends State<GoogleMaps> {
//   static const LatLng _latlong=LatLng(11.258753, 75.780411);
//   late GoogleMapController controller;
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(target: _latlong),
//         minMaxZoomPreference: MinMaxZoomPreference(1, 50),
//         zoomControlsEnabled: true,

//         ),
//     );
//   }
// }


class ImageViewing extends StatefulWidget {
  const ImageViewing({super.key});

  @override
  State<ImageViewing> createState() => _ImageViewingState();
}

class _ImageViewingState extends State<ImageViewing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PhotoViewGallery.builder(
        itemCount: 5, 
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: const AssetImage("assets/images/Cappuccino.jpg"),
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered*2,
            
            );
        },scrollDirection: Axis.horizontal,
        backgroundDecoration: const BoxDecoration(color: Colors.black),
        pageController: PageController(),
        
        )
    );
  }
}

class FToast extends StatefulWidget {
  const FToast({super.key});

  @override
  State<FToast> createState() => _FToastState();
}

class _FToastState extends State<FToast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Fluttertoast.showToast(msg: "Long Length",
            toastLength: Toast.LENGTH_LONG,
            backgroundColor: Colors.blue,
            gravity: ToastGravity.BOTTOM,

          );
        }, child: const Text("Long")),
      ),
    );
  }
}

class TextAnim extends StatefulWidget {
  const TextAnim({super.key});

  @override
  State<TextAnim> createState() => _TextAnimState();
}

class _TextAnimState extends State<TextAnim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          const SizedBox(height: 30,),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "text",
                textStyle: const TextStyle(color: Colors.black,fontSize: 24),
                speed: const Duration(milliseconds:500 )),
              ColorizeAnimatedText(
                "Colorized", 
                textStyle: const TextStyle(fontSize: 25), 
                colors: [Colors.green,Colors.amber,Colors.blue,Colors.purple],
                speed: const Duration(milliseconds: 500)
                )
            ])
        ],
      )
    );
  }
}