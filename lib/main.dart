import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything',
            style: GoogleFonts.megrim(
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.w700
            ),
          ),
          backgroundColor: Color(0xFF14509E),
        ),
        backgroundColor: Color(0xFF040A72),
        body: magicball(),
      ),
    ),
  );
}

class magicball extends StatefulWidget {

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int count = 1;
  shakingball() {
    setState(() {
      count = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(0xFF040A72),
                ),
              ),
            onPressed: (){
              setState(() {
                shakingball();
              });
            },
            child: Image.asset('images/ball$count.png'),
          ),),
        ],
      ),
    );
  }
}
