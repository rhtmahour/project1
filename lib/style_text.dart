import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.abhayaLibre(color: Colors.white, fontSize: 40));
  }
}
