import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalapp/Screens/ScrollScreens/pageview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Intro_one extends StatefulWidget {
  const Intro_one({super.key});

  @override
  State<Intro_one> createState() => _Intro_oneState();
}

class _Intro_oneState extends State<Intro_one> {
  void initState() {
    Timer(
        Duration(seconds: 3),
        (() => Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => StartingPage())))));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Lottie.asset(
                'assets/splash2.json',
                width: 500.w,
                height: 500.h,
                // fit: BoxFit.fill,
              ),
            ],
          )),
    );
  }
}
