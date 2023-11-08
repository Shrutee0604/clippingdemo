import 'package:flutter/material.dart';

class ClipperTriangleTwo extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   var mPath=Path();
   mPath.moveTo(size.width*0.5, 0);
   mPath.lineTo(size.width, size.height);
   mPath.lineTo(0, size.height);
   mPath.close();
   return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}