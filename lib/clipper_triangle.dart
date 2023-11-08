import 'package:flutter/material.dart';

class ClipperTriangle extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var mPath=Path();
    mPath.lineTo(size.width, 0);
    mPath.lineTo(size.width*0.5, size.height);
    mPath.close();
    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
   return true;
  }

}

/*


class MyClipperOne extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var mPath=Path();
    mPath.moveTo(size.width, 0);
    mPath.lineTo(size.width, size.height);
    mPath.lineTo(size.width*0.75, size.height*0.5);
    //mPath.lineTo(size.width, 0);
    mPath.close();
    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}*/
