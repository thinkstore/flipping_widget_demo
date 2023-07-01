import 'package:flutter/material.dart';
import 'dart:math';

class RotatingY extends StatelessWidget {
  static const double deg2rad = pi / 180 ;
  final Widget child;
  final double rotationY;

  const RotatingY({Key? key, required this.child , this.rotationY = 0 }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
        alignment: FractionalOffset.center ,
        transform:Matrix4.identity()
          ..setEntry(3,2, 0.001)
          ..rotateY(rotationY * deg2rad ),
        child : child );
  }
}
