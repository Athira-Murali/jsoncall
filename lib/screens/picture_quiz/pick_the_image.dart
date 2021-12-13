import 'package:flutter/material.dart';
import 'package:jsoncall/constants.dart';
import 'package:jsoncall/utils/assets_path.dart';
import 'package:jsoncall/widgets/background_image.dart';
import 'package:jsoncall/widgets/icon_button.dart';

class PickTheImage extends StatefulWidget {
  static const routeName = "/third_pageview";
  const PickTheImage({Key? key}) : super(key: key);

  @override
  _PickTheImageState createState() => _PickTheImageState();
}

class _PickTheImageState extends State<PickTheImage> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(defaultPadding),
          height: double.infinity,
          width: double.infinity,
          decoration: BgImage,
          child: Row(
            children: [
              Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(defaultPadding),
                            child: Text(
                              "Pick the image of a climber.",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(color: primaryColor),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           
                            PickImageButton(
                              onpress: () {
                                print("climber selected");
                              },
                              imageUrl:
                                  "https://previews.123rf.com/images/blackphoenix/blackphoenix1105/blackphoenix110500186/9602537-green-climber-plant-isolate-on-white-background.jpg",
                            ),
                            PickImageButton(
                              onpress: () {
                                print("climber selected");
                              },
                              imageUrl:
                                  "https://www.pngfind.com/pngs/m/147-1470448_pinterest-garden-indoor-plants-planting-flowers-pot-rose.png",
                            ),

                             PickImageButton(
                              onpress: () {
                                print("tree selected");
                              },
                              imageUrl:
                                  "https://png.pngitem.com/pimgs/s/4-44836_transparent-amaterasu-png-tree-png-hd-png-download.png",
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconBtn(
                      buttonTap: () {
                        //Navigator.pop(context);
                      },
                      size: 50,
                      imgpath: backbtn),
                  SizedBox(
                    height: 50,
                  ),
                  IconBtn(
                      buttonTap: () {
                        print("backword direction");
                      },
                      size: 50,
                      imgpath: repeatbtn),
                  IconBtn(
                      buttonTap: () {
                        print("forward direction");
                      },
                      size: 50,
                      imgpath: toffeeshote),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PickImageButton extends StatelessWidget {
  const PickImageButton({
    Key? key,
    required this.onpress,
    required this.imageUrl,
  }) : super(key: key);

  final void Function() onpress;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor, width: 3),
        ),
        child: Image.network(
          imageUrl,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
