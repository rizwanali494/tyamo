import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Auth/profile/profile_setup.dart';
import 'package:tyamo/Views/Auth/register.dart';
import 'package:tyamo/Views/Widgets/Auth/auth_heading.dart';
import '../Widgets/Auth/auth_text_field.dart';
import 'forgot_password.dart';

class LogIn extends StatelessWidget {
  final RoundedLoadingButtonController _loginBtnController =
      RoundedLoadingButtonController();

  LogIn({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              AuthHeading(
                mainText: "Sign in to Tyamo ",
                logo: "assets/images/symbol.png",
                logoSize: 20.sp,
                subText: "To connect with \nyour partner",
                fontSize: 16.sp,
              ),
              const SizedBox(
                height: 40,
              ),
              AuthTextField(
                  lableText: "Email",
                  obscureText: false,
                  lableIcon: Icons.alternate_email,
                  kyboardType: TextInputType.emailAddress,
                  size: 15.sp),
              const SizedBox(
                height: 20,
              ),
              AuthTextField(
                  lableText: "Password",
                  obscureText: true,
                  lableIcon: Icons.password,
                  kyboardType: TextInputType.text,
                  size: 15.sp
              ),
              const SizedBox(
                height: 30,
              ),
              Hero(
                tag: "auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  controller: _loginBtnController,
                  onPressed: () {
                    Timer(const Duration(seconds: 2), (){
                      _loginBtnController.success();
                      Navigator.push(context, PageTransition(child: const ProfileSetup(), type: PageTransitionType.fade)
                      );
                    });
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontSize: 17.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ForgotPassword()));
                },
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Forgot Password?",
                        style: GoogleFonts.poppins(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 0.5,
                            color: Colors.red))),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(
                        fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: Register()));
                    },
                    child: Text(
                      "SignUp",
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
