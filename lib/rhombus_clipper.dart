import 'package:flutter/material.dart';

class RhombusClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   var mPath=Path();
   mPath.moveTo(size.width*0.5, 0);
   mPath.lineTo(size.width, size.height*0.5);
   mPath.lineTo(size.width*0.5, size.height);
   mPath.lineTo(0, size.height*0.5);
   mPath.close();
   return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}