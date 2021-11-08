import 'package:flutter/material.dart';


class DiceOneRotation extends StatelessWidget {
  const DiceOneRotation({
    Key? key,
    required this.animation,
    required this.randomNumber,
  }) : super(key: key);

  final Animation<double> animation;
  final int randomNumber;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) => Transform.rotate(
        angle: animation.value,
        child: Image.asset(
          "assets/images/drawable-hdpi/dice_$randomNumber.png",
          width: 150,
          height: 150,
          fit: BoxFit.cover,
          
        ),
      ),
    );
  }
}