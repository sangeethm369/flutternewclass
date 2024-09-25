import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CaroselSlider01 extends StatefulWidget {
  const CaroselSlider01({super.key});

  @override
  State<CaroselSlider01> createState() => _CaroselSlider01State();
}

class _CaroselSlider01State extends State<CaroselSlider01> {
  final controller=PageController(viewportFraction: 0.8,keepPage: true);
  List<String> listimgages=[
    "assets/images/Cappuccino.jpg",
    "assets/images/Americano.jpeg",
    "assets/images/Cappuccino.jpg",
    "assets/images/Americano.jpeg",
    "assets/images/Cappuccino.jpg",
    "assets/images/Americano.jpeg",

  ];
  int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(child: SingleChildScrollView(

      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       SizedBox(height: 15,),
      //       SizedBox(
      //         height: 240,
      //         child: PageView.builder(
      //           controller: controller,
      //           itemCount: listimgages.length,
      //           itemBuilder: (_,index){
      //             return Container(
      //               margin: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      //               child: ClipRRect(borderRadius: BorderRadius.circular(16),
      //                 child: Image.asset(listimgages[index],fit: BoxFit.cover,),),
      //             );
      //           }
      //           ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 20.0,bottom: 10),
      //         child: Text("Worm",style: TextStyle(color: Colors.purple),),
      //       ),
      //       SmoothPageIndicator(
      //         controller: controller, 
      //         count: listimgages.length,
      //         effect: ExpandingDotsEffect(
      //           dotHeight: 10,
      //           dotWidth: 10,
      //           expansionFactor: 5,
      //           dotColor: Colors.blue,
      //           activeDotColor: Colors.deepOrange,
      //           paintStyle: PaintingStyle.fill,
      //         ),

      //         // effect: ColorTransitionEffect(
      //         //   dotColor: Colors.yellow,
      //         //   dotHeight: 16,
      //         //   activeDotColor: Colors.pink,
      //         //   dotWidth: 20,
      //         //   paintStyle: PaintingStyle.stroke,
      //         //   radius: 0,activeStrokeWidth: 5
      //         // ),

      //         // effect: WormEffect(
      //         //   dotHeight: 16,
      //         //   dotWidth: 16,
      //         //   type: WormType.thinUnderground
      //         // ),
      //         )
      //     ],
      //   ),
      // )),


      // body: Center(
      //   child: RatingBar.builder(
      //     initialRating: 3,
      //     allowHalfRating: true,
      //     direction: Axis.horizontal,
      //     itemCount: 5,
      //     minRating: 0.5,
      //     itemPadding: EdgeInsets.symmetric(horizontal: 3),
      //     itemBuilder: (context, _) => Icon(
      //       Icons.star,
      //       color: Colors.green,
      //     ), 
      //     onRatingUpdate: (rating){
      //       print(rating);
      //     },),
      // ),






      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CarouselSlider(
                items: listimgages.map((item)=>  Container(
                  child: Center(
                    child: Image.asset(item))
                 ) ).toList(), 
                options: CarouselOptions(height: 200,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 300),
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentPage=index;
                    });
                  },
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(int i=0;i<listimgages.length;i++)
                    Container(
                      margin: EdgeInsets.all(5),
                      height: 9,
                      width: i==_currentPage?40:9,
                      decoration: BoxDecoration(
                        color:i==_currentPage? Colors.green:Colors.grey,
                        borderRadius: i==_currentPage?BorderRadius.circular(3):BorderRadius.circular(90)
                        ),
                    )
                  ],
                )
            ],
          ),
        ),
      ),
    );
  }
}