import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFD75C41),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                'images/bgTop.png',
                alignment: Alignment.topRight,
                width: 188,
                height: 140,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'images/bgBottom.png',
              alignment: Alignment.bottomLeft,
              width: 188,
              height: 140,
            ),
          ),
        ],
      ),
    );
  }
}

class LogoBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Opacity(
        opacity: 0.15,
        child: Center(
          child: Image(
            image: AssetImage('images/logoIcon.png'),
            width: 180,
            height: 180,
          ),
        ),
      ),
    );
  }
}
