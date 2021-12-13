import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jsoncall/constants.dart';

import 'package:jsoncall/utils/assets_path.dart';
import 'package:jsoncall/widgets/background_image.dart';
import 'package:jsoncall/widgets/icon_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return SafeArea(
      child: Stack(
        children: [
          BackgroundImage(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                      //  width: 500,
                      // height: 300,

                      child: Image.network(
                    imgUrl,
                  )),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconBtn(
                          buttonTap: () {
                            Navigator.pop(context);
                          },
                          size: 50,
                          imgpath: play),
                      IconBtn(
                          buttonTap: () {
                            Navigator.pop(context);
                          },
                          size: 50,
                          imgpath: backbtn),
                      SizedBox(
                        height: 30,
                      ),
                      IconBtn(
                          buttonTap: () {
                            print("backword direction");
                          },
                          size: 50,
                          imgpath: backword),
                      IconBtn(
                          buttonTap: () {
                            print("forward direction");
                          },
                          size: 50,
                          imgpath: forwardbtn),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
