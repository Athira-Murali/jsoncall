// import 'dart:async';
// import 'dart:convert';
// import 'dart:core';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:jsoncall/screens/Evs/lesson_screen.dart';
// import 'package:jsoncall/screens/toffeeride/product_datamodel.dart';
// import 'package:flutter/services.dart' as rootBundle;
// import 'package:jsoncall/utils/assets_path.dart';
// import 'package:jsoncall/widgets/icon_button.dart';

// Future<Album> fetchAlbum() async {
//   final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }

// class Album {
//   final int userId;
//   final int id;
//   final String title;

//   Album({
//     required this.userId,
//     required this.id,
//     required this.title,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

// class ToffeeRideJson extends StatefulWidget {
//   const ToffeeRideJson({Key? key}) : super(key: key);

//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<ToffeeRideJson> {
//   late Future<Album> futureAlbum;

//   @override
//   void initState() {
//     super.initState();
//     futureAlbum = fetchAlbum();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Fetch Data Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Fetch Data Example'),
//           actions: [
//             IconBtn(
//                 buttonTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LessonScreen()),
//                   );
//                 },
//                 size: 50,
//                 imgpath: backbtn),
//           ],
//         ),
//         body: Column(
//           children: [
//             Center(
//               child: FutureBuilder<Album>(
//                 future: futureAlbum,
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     return Text(snapshot.data!.title);
//                   } else if (snapshot.hasError) {
//                     return Text('${snapshot.error}');
//                   }

//                   // By default, show a loading spinner.
//                   return const CircularProgressIndicator();
//                 },
//               ),
//             ),
//             FutureBuilder(
//               future: ReadJsonData(),
//               builder: (context, data) {
//                 if (data.hasError) {
//                   //in case if error found
//                   return Center(child: Text("${data.error}"));
//                 } else if (data.hasData) {
//                   var items = data.data as List<ProductDataModel>;
//                   return ListView.builder(
//                       itemCount: items == null ? 0 : items.length,
//                       itemBuilder: (context, index) {
//                         return Card(
//                           elevation: 5,
//                           margin:
//                               EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//                           child: Container(
//                             padding: EdgeInsets.all(8),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   width: 50,
//                                   height: 50,
//                                   child: Image(
//                                     image: NetworkImage(
//                                         items[index].image1.toString()),
//                                     fit: BoxFit.fill,
//                                   ),
//                                 ),
//                                 Expanded(
//                                     child: Container(
//                                   padding: EdgeInsets.only(bottom: 8),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding:
//                                             EdgeInsets.only(left: 8, right: 8),
//                                         child: Text(
//                                           items[index].name.toString(),
//                                           style: TextStyle(
//                                               fontSize: 16,
//                                               fontWeight: FontWeight.bold),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ))
//                               ],
//                             ),
//                           ),
//                         );
//                       });
//                 } else {
//                   // show circular progress while data is getting fetched from json file
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   Future<List<ProductDataModel>> ReadJsonData() async {
//     //read json file
//     final jsondata =
//         await rootBundle.rootBundle.loadString('assets/jsons/model/component2.json');
//     //decode json data as list
//     final list = json.decode(jsondata) as List<dynamic>;

//     //map json and initialize using DataModel
//     return list.map((e) => ProductDataModel.fromJson(e)).toList();
//   }
// }
