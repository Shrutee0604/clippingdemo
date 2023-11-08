import 'dart:ui';

import 'package:clippingdemo/clipper_pentagon.dart';
import 'package:clippingdemo/clipper_quadrilatral.dart';
import 'package:clippingdemo/clipper_triangle.dart';
import 'package:clippingdemo/clipper_triangle_two.dart';
import 'package:clippingdemo/rhombus_clipper.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blur Screen"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipPath(
                  clipper: PentagonClipper(),
                  child: SizedBox(
                    height: 200,
                      width: 200,
                      child: Image.asset("assets/images/img_one.jpg",fit: BoxFit.cover,)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipPath(
                  clipper: RhombusClipper(),
                  child: SizedBox(
                    width: 200,
                      height: 200,
                      child: Image.asset("assets/images/img_one.jpg",fit: BoxFit.cover,)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipPath(
                  clipper: QadrilatralClipper(),
                  child: SizedBox(
                    height: 200,
                      width: 200,
                      child: Image.asset("assets/images/img_one.jpg",fit: BoxFit.cover,)
                  ),
                ),
              ),
        Padding(
        padding: EdgeInsets.all(8.0),
        child: ClipPath(
          clipper: ClipperTriangleTwo(),
          child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/img_one.jpg",fit: BoxFit.cover,)
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
            clipper: ClipperTriangle(),
            child: SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  "assets/images/img_one.jpg", fit: BoxFit.cover,)),
          )
      ),
    Padding(
    padding: EdgeInsets.all(8.0),
    child: ClipPath(
    clipper: MyClipperOne(),
    child: SizedBox(
    width: 200,
    height: 200,
    child: Image.asset("assets/images/img_one.jpg",fit: BoxFit.cover,)
    ),
    )
    ),

    Padding(
    padding: EdgeInsets.all(10.0),
    child: ClipPath(
    child: SizedBox(
    width: 200,
    height: 200,
    child: Image.asset("assets/images/img_one.jpg",fit: BoxFit.cover,)),
    )
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child:ClipOval(
    child: SizedBox(
    width: 200,
    height: 200,
    child: Image.asset("assets/images/img_one.jpg",fit: BoxFit.cover,)),
    )
    ),

    //this will create rounded image
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(100),
    child: SizedBox(
    width: 200,//this will not showes the image in rounded edges becoz this img is portrait so use boxfit.fill,but when use fill it will stretch the img so use boxfit.cover
    height: 200,
    child: Image.asset("assets/images/img_one.jpg",fit: BoxFit.cover,))
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(left:34),
    child: ClipRRect(
    borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),//it will round edges only from left side of image
    child: Image.asset("assets/images/img_one.jpg")
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
    borderRadius: BorderRadius.circular(20),//all sides rounded
    child: Image.asset("assets/images/img_one.jpg")
    ),
    ),
    ]
    ,
    )
    ,
    )


    //to blur the image in background
    /*Stack(
        children: [
          Image.asset("assets/images/img_one.jpg"),
          BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 1,
                sigmaY: 8
              ),
            child: Text("Hello",style: TextStyle(fontSize: 34,color: Colors.white),),
          ),
        ],
      ),*/
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath = Path();
    mPath.lineTo(size.width * 0.5, 0);
    mPath.lineTo(0, size.height);
    /* mPath.lineTo(size.width, size.height*0.5);
   mPath.lineTo(size.width, size.height);*/
    mPath.close();
    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}

class MyClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var mPath = Path();
    mPath.moveTo(size.width, 0);
    mPath.lineTo(size.width, size.height);
    mPath.lineTo(size.width * 0.75, size.height * 0.5);
    //mPath.lineTo(size.width, 0);
    mPath.close();
    return mPath;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}