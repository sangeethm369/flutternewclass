// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home29 extends StatefulWidget {
  const Home29({super.key});

  @override
  State<Home29> createState() => _Home29State();
}

class _Home29State extends State<Home29> {
  final PageController controller =PageController();
  final List<String>_img=[
    "assets/images/design.png",
    "assets/images/program.png",
    "assets/images/language.png"

  ];
  final List<String>_imglearn=[
    "assets/images/python.png",
    "assets/images/html.png",
    "assets/images/cpp.png",
    "assets/images/javascript.png",
    "assets/images/mysql.png",
    "assets/images/ruby.png",
    "assets/images/typescript.png",
  ];
  final List<String>_learnName=[
    "Python for beginners",
    "HTML 5",
    "C++",
    "JavaScript",
    "MySql",
    "Ruby",
    "TypeScript",
  ];
  final List<double>_learned=[
    .75,.18,.47,.32,.5,.2,.81,
  ];
  final List<String>_namesNew=[
    "Design",
    "Programming",
    "language"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(top: 10,left: 0,right: 0,
            child: Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(height: 60,width: 60,
                      child: CircleAvatar(backgroundImage: AssetImage("assets/images/Americano.jpeg"),)),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Alen Williams",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          Text("Student",style: TextStyle(color: Color.fromARGB(255, 129, 129, 129)),)
                        ],
                      ),
                    ),const Spacer(),
                    const Icon(Icons.search,color: Colors.white,),
                    const Icon(Icons.notifications_outlined,color: Colors.white,)

                  ],
                ),
              ),
            )),
            Positioned.fill(top: 100,left: 0,right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 14, 14, 14)),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("New courses",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 18),),
                      Spacer(),
                      IconButton(onPressed: (){
                        setState(() {
                          controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.linear);
                        });
                      }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                      IconButton(onPressed: (){
                        setState(() {
                          controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.linear);
                        });
                      }, icon: Icon(Icons.arrow_forward,color: Colors.white,)),
                    ],
                  ),
                  Container(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 130,width: 130,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),image: DecorationImage(image: AssetImage(_img[index]),fit: BoxFit.fill)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(child: Text(_namesNew[index],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),)),
                                  Flexible(child: Text("18 courses",style: TextStyle(fontSize: 10,color: Colors.white),))
                                ],
                              ),
                            ),
                          ),
                        );
                      },),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0,top:5),
                    child: Text("Continue learnig",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white,fontSize: 18)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _imglearn.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(height: 80,
                          child: FittedBox(fit: BoxFit.none,
                            child: Row(
                              children: [
                                Container(
                                  height: 60,width: 60,decoration: BoxDecoration(color: Color.fromARGB(255, 22, 22, 22),image: DecorationImage(image: AssetImage(_imglearn[index]),fit: BoxFit.fill),borderRadius: BorderRadius.circular(9)),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.0,top: 5),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 8.0),
                                        child: Text(_learnName[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 6.0),
                                        child: Text("${_learned[index]*100}% completed",style: TextStyle(color: const Color.fromARGB(255, 124, 124, 124)),),
                                      ),
                                      SizedBox(width: 200,
                                        child: LinearProgressIndicator(
                                          minHeight: 5,
                                          value: _learned[index],
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.white,backgroundColor: const Color.fromARGB(255, 53, 53, 53),
                                          
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          ),
                        );
                      },))
                ],
                ),
              )
              )
            
        ],
      ),
    );
  }
}