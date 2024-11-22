import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/Invitation/accept_invit.dart';

class InviteFriend extends StatelessWidget {
  const InviteFriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(
                "assets/images/logo1.png",
                filterQuality: FilterQuality.high,
              )),
          leading: null,
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const AcceptInvite()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Icon(
                  Icons.person_outline,
                  color: Colors.purple,
                  size: 27.sp,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.blue),
              child: Text(
                "Find Your Friend",
                style: GoogleFonts.poppins(
                    fontSize: 17.5.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10,
                          )
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                          hintText: "Hi Rizwan, type an exact username",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Nunito",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 9.5.h,
                    width: 9.5.w,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10)
                      ],
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
                height: 50.h,
                width: double.infinity,
                child: Image.asset("assets/images/invitefriend.png")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Search for your friend on Tyamo or invite your friend to Tayamo",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w300,
                    fontSize: 17.sp,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.purple),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Invite a friend",
                  style: GoogleFonts.poppins(
                      fontSize: 17.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
