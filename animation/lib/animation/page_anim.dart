import 'package:flutter/material.dart';

class SlideRight extends PageRouteBuilder {
  final Widget page;

  SlideRight({required this.page})
      : super(pageBuilder: (context, animation, animationTow) {
          return page;
        }, transitionsBuilder: (context, animation, animationTow, child) {
          var begin = Offset(1, 1);
          var end = Offset(0, 0);
          var tween = Tween(begin: begin, end: end);
          var offsetAnimation = animation.drive(tween);
          return SlideTransition(
            position: offsetAnimation,
            child: page,
          );
        });
}

class Scale extends PageRouteBuilder {
  final Widget page;

  Scale({required this.page})
      : super(pageBuilder: (context, animation, animationTow) {
          return page;
        }, transitionsBuilder: (context, animation, animationTow, child) {
          var begin = 0.0;
          var end = 1.0;
          var tween = Tween(begin: begin, end: end);
          var curveAnimation =
              CurvedAnimation(parent: animation, curve: Curves.slowMiddle);
          return ScaleTransition(
            scale: tween.animate(curveAnimation),
            child: page,
          );
        });
}

class Rotation extends PageRouteBuilder {
  final Widget page;

  Rotation({required this.page})
      : super(pageBuilder: (context, animation, animationTow) {
          return page;
        }, transitionsBuilder: (context, animation, animationTow, child) {
          var begin = 0.0;
          var end = 1.0;
          var tween = Tween(begin: begin, end: end);
          var curveAnimation =
              CurvedAnimation(parent: animation, curve: Curves.linear);
          return RotationTransition(
            turns: tween.animate(curveAnimation),
            child: page,
          );
        });
}

class SizeTran extends PageRouteBuilder {
  final Widget page;

  SizeTran({required this.page})
      : super(pageBuilder: (context, animation, animationTow) {
          return page;
        }, transitionsBuilder: (context, animation, animationTow, child) {
          return Align(
            alignment: Alignment.center,
            child: SizeTransition(
              sizeFactor: animation,
              child: page,
            ),
          );
        });
}

class Fade extends PageRouteBuilder {
  final Widget page;

  Fade({required this.page})
      : super(pageBuilder: (context, animation, animationTow) {
          return page;
        }, transitionsBuilder: (context, animation, animationTow, child) {
          return FadeTransition(
            opacity: animation,
            child: page,
          );
        });
}

// merage  animated

class MultiAnimate extends PageRouteBuilder {
  final Widget page;

  MultiAnimate({required this.page})
      : super(pageBuilder: (context, animation, animationTow) {
          return page;
        }, transitionsBuilder: (context, animation, animationTow, child) {
          var begin = 0.0;
          var end = 1.0;
          var tween = Tween(begin: begin, end: end);
          var curveAnimation =
              CurvedAnimation(parent: animation, curve: Curves.linear);
          return RotationTransition(
            turns: tween.animate(curveAnimation),
            child: Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: animation,
                child: ScaleTransition(
                  scale: tween.animate(curveAnimation),
                  child: page,
                ),
              ),
            ),
          );
        });
}
