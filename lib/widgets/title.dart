import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AwesomeTitle extends StatelessWidget {
  const AwesomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8.0),
      child: Text(
        "BIENVENIDOS",
        style: GoogleFonts.pacifico(
          fontSize: 35,
          color: Colors.grey[600],
        ),
      ),
    );
  }
}
