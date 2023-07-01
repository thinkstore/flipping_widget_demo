
import 'package:flutter/material.dart';
import 'package:word_book/widgets/mirorred_widget.dart';
import 'package:word_book/widgets/rotating_y.dart';



class FlippingWidget extends StatelessWidget {
  final bool   isFlipped ;
  final Widget front ;
  final Widget back ;

  const FlippingWidget({Key? key , this.isFlipped = false , required this.front , required this.back }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: Tween<double>( begin : 0 , end : isFlipped ? 180 : 0 ),
        curve: Curves.easeInOutBack,
        duration: const Duration( milliseconds: 700 ),
        builder:(context,value , child ){
          return RotatingY(
              rotationY: value,
              child:  ( value < 90 )  ? front : MirorredWidget(child: back));
        });
  }
}


