import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jsoncall/constants.dart';
import 'package:jsoncall/screens/picture_quiz/pick_the_image.dart';
import 'package:jsoncall/utils/assets_path.dart';
import 'package:jsoncall/widgets/background_image.dart';
import 'package:jsoncall/widgets/icon_button.dart';



class SecondScreen extends StatelessWidget {
  static const routeName = "/audiolesson_pageview";
  const SecondScreen({ Key? key,required this.imgUrl }) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
    return Stack(
      children: [
        BackgroundImage(),
        Positioned(
          right: 10,
          top: 10,
          child: Row(
            children: [
              // GestureDetector(
              //   onTap: () {
              //     print('play/ pause Button');
              //     setState(() {
              //       selected = !selected;
              //     });
              //   },
              //   child: Image(
              //     height: 50,
              //     image: AssetImage(selected ? play : pause),
              //   ),
              // ),
              IconBtn(
                  buttonTap: () {
                    Navigator.pop(context);
                  },
                  size: 50,
                  imgpath:play),
              SizedBox(
                width: 10,
              ),
            IconBtn(
                  buttonTap: () {
                    Navigator.pop(context);
                  },
                  size: 50,
                  imgpath: backbtn),
            ],
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Image.network(
                   imgUrl,
                    height: 250,
                    width: 300,
                    
                  ),
                ),
              const  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Text(
                           'some plants are small while some are big', overflow: TextOverflow.visible,),
                    )),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Row(
            children: [
             
             IconBtn(
                  buttonTap: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                PickTheImage()));
                    print("forward direction");
                  },
                  size: 50,
                  imgpath: forwardbtn),
              SizedBox(
                width: 10,
              ),
             IconBtn(
                  buttonTap: () {
                    print("backword direction");
                  },
                  size: 50,
                  imgpath: backword),
            ],
          ),
        ),
      ],
    );
  }
}


// class SecondPage extends StatefulWidget {
//   static const routeName = "/third_pageview";
//   const SecondPage({Key? key}) : super(key: key);

//   @override
//   _SecondPageState createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   bool selected = true;
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         BackgroundImage(),
//         Positioned(
//           right: 10,
//           top: 10,
//           child: Row(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   print('play/ pause Button');
//                   setState(() {
//                     selected = !selected;
//                   });
//                 },
//                 child: Image(
//                   height: 50,
//                   image: AssetImage(selected ? play : pause),
//                 ),
//               ),
//               SizedBox(
//                 width: 10,
//               ),
//             IconBtn(
//                   buttonTap: () {
//                     Navigator.pop(context);
//                   },
//                   size: 50,
//                   imgpath: backbtn),
//             ],
//           ),
//         ),
//         Center(
//           child: Padding(
//             padding: const EdgeInsets.all(defaultPadding),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Flexible(
//                   child: Image.network(
//                     "https://wonderfulengineering.com/wp-content/uploads/2016/01/wallpaper-download-1.jpg",
//                     height: 250,
//                     width: 300,
                    
//                   ),
//                 ),
//               const  Flexible(
//                     child: Padding(
//                       padding: const EdgeInsets.all(defaultPadding),
//                       child: Text(
//                            'some plants are small while some are big', overflow: TextOverflow.visible,),
//                     )),
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           bottom: 10,
//           right: 10,
//           child: Row(
//             children: [
             
//              IconBtn(
//                   buttonTap: () {
//                      Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (BuildContext context) =>
//                                 PickTheImage()));
//                     print("forward direction");
//                   },
//                   size: 50,
//                   imgpath: forwardbtn),
//               SizedBox(
//                 width: 10,
//               ),
//              IconBtn(
//                   buttonTap: () {
//                     print("backword direction");
//                   },
//                   size: 50,
//                   imgpath: backword),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
