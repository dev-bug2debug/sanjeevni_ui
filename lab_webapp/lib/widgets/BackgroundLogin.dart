import 'package:flutter/material.dart';

class BackgroundLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF7C72F5), Color(0xFF356EDD)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.5, 1.0])),
        ),
        ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Color(0xEEF8F3F9),
                      Color(0x00CE967E),
                      Color(0x00CE967E)
                      //Color(0xFFFFFFFF)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.00000005, 0.9, 1.0])),
          ),
        )
      ],
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    //path.cubicTo(0, size.height*0.45, size.width*0.2, size.height, size.width*0.35, size.height*0.5);
    //path.cubicTo(size.width*0.5, size.height*0.75, size.width*0.8, size.height*0.5, size.width, size.height);
    path.lineTo(size.width * 0.03, size.height * 0.88);
    path.cubicTo(size.width * 0.03, size.height * 0.88, size.width * 0.05,
        size.height * 0.8, size.width * 0.14, size.height * 0.84);
    path.lineTo(size.width * 0.4, size.height * 0.95);
    path.cubicTo(size.width * 0.4, size.height * 0.95, size.width * 0.5,
        size.height, size.width * 0.55, size.height * 0.95);
    path.lineTo(size.width * 0.6, size.height * 0.9);
    path.lineTo(size.width * 0.7, size.height * 0.77);
    path.lineTo(size.width * 0.8, size.height * 0.65);
    path.lineTo(size.width * 0.9, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.75);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
