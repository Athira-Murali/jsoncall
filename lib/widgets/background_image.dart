import 'package:flutter/material.dart';

BoxDecoration skyBackgroundDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/onboarding/SliderBG.jpg'),
    fit: BoxFit.cover,
  ),
);

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width:double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/lessons/bg.png'),
        fit: BoxFit.cover,
      )),
    );
  }
}

BoxDecoration BgImage = const BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/lessons/bg.png'),
    fit: BoxFit.cover,
  ),
);

class  PageBackground extends StatelessWidget {
  const PageBackground({ Key? key, required this.imagepath }) : super(key: key);
  final String imagepath;

  @override
  Widget build(BuildContext context) {
   return Image.asset(
     imagepath,
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
      
    );
  }
}

BoxDecoration titleBackground = BoxDecoration(
  image: DecorationImage(
    image: AssetImage('assets/images/lessons/titlebg.png'),
    fit: BoxFit.cover,
  ),
);
