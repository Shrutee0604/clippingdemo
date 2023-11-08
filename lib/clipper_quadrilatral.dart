import 'package:flutter/material.dart';

class QadrilatralClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   var mPath=Path();
   mPath.lineTo(size.width*0.6, 0);
   mPath.lineTo(size.width, size.height);
   mPath.lineTo(size.width*0.4, size.height);
   mPath.close();
   return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}