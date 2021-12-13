import 'package:flutter/material.dart';

import 'package:jsoncall/screens/Evs/lesson_screen.dart';
import 'package:jsoncall/screens/toffeeride/product_list.dart';
// import 'package:jsoncall/screens/toffeeride/lesson.dart';
// import 'package:jsoncall/screens/toffeeride/json.dart';



void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      //home: LessonScreen(),
      home: ProductList(),
      //home: Lessons(),
      
    );
  }
}
