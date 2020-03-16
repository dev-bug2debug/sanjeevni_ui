import 'package:flutter/material.dart';

class BackgroundLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green,Colors.lightGreen,Colors.white],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.05,0.15,1.0]
              )
          ),
        ),
        ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            height: MediaQuery.of(context).size.height*0.25,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x88FF0000),Color(0x22FF0000),Color(0x11FFFFFF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.01,0.50,1.0]
              )
            ),
          ),
        )
      ],
    );
  }
}

class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(0, size.height*0.75);
    path.cubicTo(0, size.height*0.75, size.width*0.1, size.height, size.width*0.5, size.height*0.75);
    path.cubicTo(size.width*0.5, size.height*0.75, size.width*0.8, size.height*0.5, size.width, size.height);
    //path.lineTo(size.width*0.15, size.height);
    //path.lineTo(size.width*0.8, size.height*0.6);
    //path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}