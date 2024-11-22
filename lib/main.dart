import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/Auth/login.dart';

import 'Views/Auth/forgot_password.dart';
import 'Views/Auth/register.dart';
import 'Views/Invitation/accept_invit.dart';
import 'Views/Invitation/invite_friend.dart';

void main() {
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType){
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Tyamo',
              home: AcceptInvite()
          );
        }
    );
  }
}