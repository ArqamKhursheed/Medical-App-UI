import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/components/colors.dart';

import 'intro_one.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void initState() {
    Timer(
        Duration(seconds: 3),
        (() => Navigator.of(context)
            .push(MaterialPageRoute(builder: ((context) => Intro_one())))));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/welcomepic.PNG',
              height: 480,
              width: 450,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome to ',
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                height: 1.0,
                                color: primaryBlue,
                                fontSize: 35,
                                fontWeight: FontWeight.bold))),
                    Text('Medica! ',
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                height: 1.0,
                                color: primaryBlue,
                                fontSize: 35,
                                fontWeight: FontWeight.bold))),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
                'The best online doctor appointment & \n consultation app of the century for your \n health and medical needs!',
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(textStyle: TextStyle(fontSize: 14)))
          ],
        ),
      ),
    );
  }
}
