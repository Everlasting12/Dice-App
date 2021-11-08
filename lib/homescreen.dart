import 'package:dice/mydiceapp1.dart';
import 'package:dice/mydiceapp2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color diceBtnColor = Color(0xFF480099);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF480099),
        title: Text("Dice",
            style: GoogleFonts.luckiestGuy(textStyle: TextStyle())),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF7700FF)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: diceBtnColor,
                  onSurface: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyDiceApp()));
                },
                child: Text(
                  'Dice : 1',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: diceBtnColor,
                  onSurface: Colors.black87,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyDiceApp2()));
                },
                child: Text(
                  'Dice : 2',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
