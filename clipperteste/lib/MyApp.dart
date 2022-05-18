import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 320,
              decoration: BoxDecoration(
                color: Colors.purple[300],
              ),
            ),
          )
        ],
      )
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 210);
    path.lineTo(210, 0);
    path.lineTo(size.width-500, size.height-500);

    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}