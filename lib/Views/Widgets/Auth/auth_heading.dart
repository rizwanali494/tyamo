import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthHeading extends StatelessWidget {
  final String mainText;
  final String subText;
  final String logo;
  final double fontSize;
  final double logoSize;

  const AuthHeading({super.key, required this.fontSize, required this.logo, required this.mainText, required this.logoSize, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Text(
              mainText,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                  color: const Color(0xff021b48)),
            ),
            SizedBox(
                height: logoSize,
                width: logoSize,
                child: Image.asset(logo)),
          ],
        ),
        Text(
          subText,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
              color: const Color(0xff021b48)),
        ),
      ],
    );
  }
}