import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Apointment extends StatefulWidget {
  const Apointment({super.key});

  @override
  State<Apointment> createState() => _ApointmentState();
}

class _ApointmentState extends State<Apointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10),
          child: Image(
            image: AssetImage(
              'assets/medlogo.png',
            ),
          ),
        ),
        title: Text(
          'My Appointment',
          style: GoogleFonts.mukta(
              textStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Image.asset(
          'assets/appointment.PNG',
          height: 200.h,
          width: 200.w,
        )),
        Text(
          "You don't have an Appointment yet",
          style: GoogleFonts.urbanist(
              textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          "You don't have a doctors appointment scheduled \nat the moment.",
          textAlign: TextAlign.center,
          style: GoogleFonts.urbanist(
              textStyle:
                  TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400)),
        )
      ]),
    );
  }
}
