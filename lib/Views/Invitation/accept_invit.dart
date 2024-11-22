import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:getwidget/size/gf_size.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AcceptInvite extends StatelessWidget {
  const AcceptInvite({super.key});

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
          leading: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.deepPurple,
                size: 20.sp,
              )),
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
                "See received invitations",
                style: GoogleFonts.poppins(
                    fontSize: 17.5.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: SizedBox(
                  height: 90,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 1, 15),
                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child: CircularProfileAvatar(
                                "",
                                backgroundColor: Colors.blue,
                                radius: 35,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 0, bottom: 2),
                                child: Text(
                                  "@rizwan12",
                                  style: GoogleFonts.poppins(fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text("Rizwan",
                                    style:
                                    GoogleFonts.poppins(color: Colors.grey,fontSize: 13)),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                GFButton(
                                  onPressed: () {},
                                  size: GFSize.SMALL,
                                  color: Colors.lightBlue,
                                  shape: GFButtonShape.pills,
                                  child: const Text("Accept", style: TextStyle(fontSize: 12),),
                                ),
                                const SizedBox(width: 5,),
                                GFButton(
                                  onPressed: () {},
                                  size: GFSize.SMALL,
                                  color: Colors.red,
                                  shape: GFButtonShape.pills,
                                  child: const Text("Decline", style: TextStyle(fontSize: 12),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 350,
                width: double.infinity,
                child: Image.asset("assets/images/getinvitation.png")),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your received invitations are currently ",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  Text(
                    "Empty.",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.deepPurple),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}