import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Dice',
              style: GoogleFonts.abyssinicaSil(color: Colors.white)),
          centerTitle: true,
        ),
        body: const GradientContainer(
          Colors.white,
          Colors.black,
        ),
      )));
}
