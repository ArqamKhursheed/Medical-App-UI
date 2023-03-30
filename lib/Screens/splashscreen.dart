import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'introscreens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
        (() => Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => WelcomeScreen())))));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.medication,
                    size: 35.h,
                    color: Colors.white,
                  ),
                  backgroundColor: primaryBlue,
                ),
                SizedBox(
                  width: 7.w,
                ),
                Center(
                    child: Text('Medica',
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 35.sp,
                                fontWeight: FontWeight.w500))))
              ],
            ),
          ),
          SizedBox(
            height: 200.h,
          ),
          SpinKitFadingCircle(
            color: Colors.blue,
            size: 70.0.r,
            duration: Duration(seconds: 3),
          ),
        ],
      ),
    );
  }
}
