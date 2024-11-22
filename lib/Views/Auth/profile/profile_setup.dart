import 'dart:async';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import '../../Widgets/Auth/auth_text_field.dart';

class ProfileSetup extends StatefulWidget {
  const ProfileSetup({super.key});

  @override
  State<ProfileSetup> createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  final RoundedLoadingButtonController _profileSetupBtnController =
      RoundedLoadingButtonController();

   bool isMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: SizedBox(
          height: 120,
          width: 120,
          child: Image.asset("assets/images/logo1.png",
              filterQuality: FilterQuality.high),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xff000221)),
            child: Text(
              "Profile Setup",
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 3),
            ),
          ),
          const SizedBox(height: 50),
          CircularProfileAvatar("",
              backgroundColor: Colors.black,
              initialsText: Text("+",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20))),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: AuthTextField(
                lableText: "Your Name",
                obscureText: false,
                lableIcon: Icons.person,
                kyboardType: TextInputType.text,
                size: 13),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: AuthTextField(
                lableText: "Your Username",
                obscureText: false,
                lableIcon: Icons.alternate_email,
                kyboardType: TextInputType.text,
                size: 13),
          ),
          const SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    isMale = true;
                  });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isMale ? Colors.cyan : Colors.grey,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(1.0, 9.0),
                            blurRadius: 30)
                      ]),
                  child: const Icon(
                    Icons.male,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isMale = false;
                  });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: !isMale ? Colors.pinkAccent : Colors.grey,
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black38,
                            offset: Offset(1.0, 9.0),
                            blurRadius: 30)
                      ]),
                  child: const Icon(
                    Icons.female,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: 200,
            child: Hero(
              tag: "auth",
              child: RoundedLoadingButton(
                width: 2000,
                borderRadius: 10,
                color: const Color(0xff00C1AA),
                controller: _profileSetupBtnController,
                onPressed: () {
                  Timer(const Duration(seconds: 2), (){
                    _profileSetupBtnController.success();
                    Navigator.push(context, PageTransition(child: const InviteFriend(), type: PageTransitionType.fade)
                    );
                  });
                },
                child: Text(
                  "Next",
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
