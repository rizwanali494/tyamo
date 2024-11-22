import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Auth/login.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_text_field.dart';

class Register extends StatelessWidget {

  final RoundedLoadingButtonController _registerBtnController =
  RoundedLoadingButtonController();

  Register({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AuthHeading(
                mainText: "Sign Up to Tyamo",
                logo: "assets/images/ySymbol.png",
                logoSize: 20.sp,
                fontSize: 16.sp,
                subText: "Get connected with \nyour partner",
              ),
              const SizedBox(
                height: 40,
              ),
              AuthTextField(
                  lableText: "Name",
                  obscureText: false,
                  lableIcon: Icons.account_circle,
                  kyboardType: TextInputType.text,
                  size: 15.sp),
              const SizedBox(
                height: 20,
              ),
              AuthTextField(
                  lableText: "Password",
                  obscureText: true,
                  lableIcon: Icons.password,
                  kyboardType: TextInputType.text,
                  size: 15.sp),
              const SizedBox(
                height: 20,
              ),
              AuthTextField(
                  lableText: "Confirm Password",
                  obscureText: true,
                  lableIcon: Icons.lock_reset,
                  kyboardType: TextInputType.text,
                  size: 15.sp),
              const SizedBox(height: 30,),
              Hero(
                tag: "auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  controller: _registerBtnController,
                  onPressed: () {
                    if (kDebugMode) {
                      print("The Button was Pressed");
                    }
                  },
                  child: Text(
                    "Register",
                    style: GoogleFonts.poppins(
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text("By registering, you agree to our terms and conditions.",
                      style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueGrey))),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Registered?",
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: LogIn()));
                    },
                    child: Text(
                      "SignIn",
                      style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: const Color(0xff2F76EA),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
