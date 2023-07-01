import 'dart:math';

import 'package:flutter/material.dart';

class MirorredWidget extends StatelessWidget {
  final Widget child;
  const MirorredWidget({Key? key , required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()..rotateY(pi),
        child: child);
  }
}
