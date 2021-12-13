import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  late String imgpath;
  late void Function() buttonTap;
  double? size;
   IconBtn({
    required this.buttonTap,
    required this.imgpath,
        this.size,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTap,
      child: Image(
        height: size,
        image: AssetImage(imgpath),
      ),
    );
  }
}
