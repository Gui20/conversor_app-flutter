import 'package:conversor_app/widgets/drop_down_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Container(
            width: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 435.0,
            child: Text(
              'Conversor',
              style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    letterSpacing: .5,
                    fontSize: 50.0),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: 200.0,
            width: 435.0,
            child: Text(
              'Moeda',
              style: GoogleFonts.comfortaa(
                textStyle: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    letterSpacing: .5,
                    fontSize: 50.0),
              ),
            ),
          ),
          const DropDownButton(),
        ],
      ),
    );
  }
}
