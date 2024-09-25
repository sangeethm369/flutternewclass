import 'package:flutter/material.dart';
import 'package:flutternewclass/class290824_2.dart';

import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Class290824 extends StatefulWidget {
  const Class290824({super.key});

  @override
  State<Class290824> createState() => _Class290824State();
}

class _Class290824State extends State<Class290824> {
  final PageController controller =PageController();
  final List<String> _lotties=[
    "assets/images/study.json",
    "assets/images/programming.json",
    "assets/images/onlinetech.json"
  ];
  final List<String>_heading=[
    "Immersion in the word of knowledge",
  ];
  final List<String>_subhead=[
    "Our assignment will help you deepen your knowledge of math,languages,history,science,and more!",
  ];
  // int _currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.purple,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25,),
              SmoothPageIndicator(
                controller: controller, 
                count: _lotties.length,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.white,dotHeight: 5,
                  dotWidth: 40
                ),
                ),
              Flexible(
                child: Container(
                  child: PageView.builder(
                    controller: controller,
                    itemCount: _lotties.length,
                    itemBuilder: (_, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                        child: Column(
                          children: [
                            ClipRRect(borderRadius: BorderRadius.circular(16),
                              child: Lottie.asset(_lotties[index],fit: BoxFit.cover,),),
                            Flexible(child: Text(_heading[0],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 26),)),
                            Flexible(child: Text(_subhead[0]))
                          ],
                        ),
                      );
                    },
                    ),
                ),
              ),
              const SizedBox(height:20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomNav(),));
                },
                  style: ElevatedButton.styleFrom(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)) ), child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Get Started"),Icon(Icons.arrow_forward)],),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex=0;
  final List<Widget>_listNav=[
    const Home29(),
    const Center(child: Text("Courses"),),
    const Center(child: Text("Favorites"),),
    const Center(child: Text("Search"),),
    const Center(child: Text("Setting"),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _listNav[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, 
        backgroundColor: Colors.black,
        selectedItemColor: Colors.purple,
        unselectedItemColor: const Color.fromARGB(255, 117, 117, 117),
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        items:  const [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.category),label: "Course",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorits",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.black),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings",backgroundColor: Colors.black),
      ],),
    );
  }
}