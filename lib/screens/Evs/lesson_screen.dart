import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jsoncall/screens/Evs/firstpage.dart';
import 'package:jsoncall/screens/Evs/secondpage.dart';
import 'package:jsoncall/widgets/background_image.dart';




class LessonScreen extends StatefulWidget {
  static const routeName = "/Lesson_screen";

  @override
  _LessonScreenState createState() => _LessonScreenState();
}

class _LessonScreenState extends State<LessonScreen> {
  int _currentPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 350), curve: Curves.easeIn);
    });
   
  }

  @override
  void deactivate() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    super.deactivate();
  }

   

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PageView(
        controller: pageController,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: titleBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Heading",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
          Container(child: FirstScreen(imgUrl: "https://wonderfulengineering.com/wp-content/uploads/2016/01/wallpaper-download-1.jpg",)),
          Container(child: SecondScreen(imgUrl:  "https://wonderfulengineering.com/wp-content/uploads/2016/01/wallpaper-download-1.jpg",)),
          Container(child: SecondScreen(imgUrl:  "https://www.pngall.com/wp-content/uploads/2016/03/Tree-Download-Free-PNG.png",)),
          Container(child: FirstScreen(imgUrl:  "https://i0.wp.com/sreditingzone.com/wp-content/uploads/2017/11/Tree-Png-For-Editing-.jpg",)),
           Container(child: SecondScreen(imgUrl:  "https://wonderfulengineering.com/wp-content/uploads/2016/01/wallpaper-download-1.jpg",)),
          
        ],
      ),
    );
  }
}

