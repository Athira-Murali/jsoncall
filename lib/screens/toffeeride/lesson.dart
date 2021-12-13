import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart ' as rootBundle;
import 'package:jsoncall/model/lesson_model.dart';
import 'package:jsoncall/model/productmodel.dart';
import 'package:jsoncall/screens/toffeeride/product_list.dart';

class Lessons extends StatefulWidget {
  const Lessons({ Key? key }) : super(key: key);

  @override
  _LessonsState createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {

  late List<ProductDataModel> _product;
  late bool _loading;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      
       FutureBuilder(
      future: ReadJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(child: Text("${data.error}"));
        } else if (data.hasData) {
          var items = data.data as List<ProductDataModel>;
          return ListView.builder(
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                ProductDataModel _product = items[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                 ListTile(
              title: Text( items[index].name.toString()),
              subtitle: Text(items[index].category.toString()),
            )
                    // Image(
                    //   image:
                    //       NetworkImage(items[index].imageURL.toString()),
                    //   fit: BoxFit.fill,
                    // ),
                    // Text(
                    //   items[index].name.toString(),
                    //   style: TextStyle(
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.bold),
                    // ),
                   
                   
                  ],
                );
              });
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    )
      
    );
  }
  Future<List<LessonDataModel>> ReadJsonData() async{
    final jsondata = await rootBundle.rootBundle.loadString('assets/jsons/model/toffeeride.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => LessonDataModel.fromJson(e)).toList();
  }
}