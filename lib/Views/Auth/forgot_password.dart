import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_text_field.dart';
import '../Widgets/Auth/auth_heading.dart';

class ForgotPassword extends StatelessWidget {
  final RoundedLoadingButtonController _forgotBtnController =
      RoundedLoadingButtonController();

  ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Tyamo",
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xff000221),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                AuthHeading(
                    fontSize: 16.sp,
                    logo: "assets/images/ySymbol.png",
                    mainText: "Forgot Your Password ? ",
                    logoSize: 20.sp,
                    subText: ""),
                SizedBox(
                  height: 25.h,
                  width: 30.w,
                  child: Image.asset("assets/images/forgot_password_icon.png",
                      filterQuality: FilterQuality.high),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "To request for a new one, type your email address below. A link to reset the password will be send to that email.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontSize: 14.sp),
                ),
                const SizedBox(height: 10),
                AuthTextField(
                    lableText: "Email",
                    obscureText: false,
                    lableIcon: Icons.alternate_email,
                    kyboardType: TextInputType.emailAddress,
                    size: 15.sp),
                const SizedBox(height: 30),
                Hero(
                  tag: "auth",
                  child: RoundedLoadingButton(
                    width: 2000,
                    controller: _forgotBtnController,
                    onPressed: () {
                      if (kDebugMode) {
                        print("The Button was Pressed");
                      }
                    },
                    child: Text(
                      "Send",
                      style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
