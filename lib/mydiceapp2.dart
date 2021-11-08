import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'diceImage.dart';

class MyDiceApp2 extends StatefulWidget {
  MyDiceApp2({Key? key}) : super(key: key);

  @override
  _MyDiceApp2State createState() => _MyDiceApp2State();
}

class _MyDiceApp2State extends State<MyDiceApp2>
    with SingleTickerProviderStateMixin {
  int randomNumber1 = 1;
  int randomNumber2 = 1;
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    setRotation(180);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void setRotation(int degrees) {
    final angle = degrees * pi / 180;
    animation = Tween<double>(begin: 0, end: angle).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF480099),
        title: Text("Dice",
            style: GoogleFonts.luckiestGuy(textStyle: TextStyle())),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          controller.forward(from: 0);
          diceNumber();
        },
        child: Container(
          decoration: BoxDecoration(color: Color(0xFF7700FF)),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DiceOneRotation(
                        animation: animation, randomNumber: randomNumber1),
                    DiceOneRotation(
                        animation: animation, randomNumber: randomNumber2),
                  ],
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 180.0,
              ),
              Container(
                width: 80,
                height: 80,
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFFa557ff)),
                child: Center(
                  child: Text(
                    "${randomNumber1 + randomNumber2}",
                    style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }

  diceNumber() {
    Random random = new Random();
    setState(() {
      randomNumber1 = random.nextInt(6) + 1;
      randomNumber2 = random.nextInt(6) + 1;
    }); // from 1 upto 6 included
  }
}
