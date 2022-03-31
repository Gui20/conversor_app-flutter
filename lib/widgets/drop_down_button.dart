import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  final items = ['BTC', 'Etherium', 'Dólar'];
  String? value = 'BTC';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: DropdownButton<String>(
            value: value,
            iconSize: 36.0,
            icon: const Icon(
              Icons.arrow_drop_down_sharp,
              color: Colors.black,
            ),
            isExpanded: true,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => setState(
              () async {
                this.value = value;
              },
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: Colors.black, width: 4.0),
          ),
        ),
        Row(
          children: [
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.blue,
              alignment: Alignment.bottomCenter,
              child: Text(
                '$value:',
                style: GoogleFonts.comfortaa(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      letterSpacing: .5,
                      fontSize: 30.0),
                ),
              ),
            ),
            Container(
              width: 232,
              height: 200,
              alignment: Alignment.bottomCenter,
              color: Colors.orange,
              child: Text(
                'Qualquer coisa',
                style: GoogleFonts.comfortaa(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      letterSpacing: .5,
                      fontSize: 25.0),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              height: 216,
              width: 200,
              alignment: Alignment.center,
              child: Text(
                'Real:',
                style: GoogleFonts.comfortaa(
                  textStyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      letterSpacing: .5,
                      fontSize: 30.0),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      );
}
