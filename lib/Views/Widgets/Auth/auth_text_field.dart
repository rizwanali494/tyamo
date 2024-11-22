import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AuthTextField extends StatelessWidget {
  final TextInputType kyboardType;
  final bool obscureText;
  final IconData lableIcon;
  final String lableText;
  final double size;

  const AuthTextField({super.key, required this.lableText, required this.obscureText, required this.lableIcon, required this.kyboardType , required this.size});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      autofocus: false,
      obscureText: obscureText,
      style: GoogleFonts.poppins(fontSize: size),
      keyboardType: kyboardType,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        fillColor: const Color(0xffE7E7F2),
        filled: true,
        prefixIcon: Icon(
          lableIcon,
          size: size,
        ),
        prefixIconColor: const Color(0xff021b48),
        label: Text(
          lableText,
        ),
        labelStyle:
        GoogleFonts.poppins(fontSize: size, color: Colors.black),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
