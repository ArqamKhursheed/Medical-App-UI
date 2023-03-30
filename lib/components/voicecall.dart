import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget VoiceCall(String name, String call, String time, String img) {
  return (Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 120.h,
      width: 400.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          width: 15.w,
        ),
        Container(
          height: 95.h,
          width: 85.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage(img), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            height: 1.5.h)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '_____________________________',
                style: TextStyle(height: 0.1, color: Colors.grey.shade400),
              ),
              SizedBox(
                height: 10,
              ),
              Text(call),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    time,
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.black, fontSize: 15, height: 1.5)),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.blue.shade50,
                  child: Icon(
                    Icons.arrow_circle_right,
                    color: primaryBlue,
                  )),
            ),
          ],
        )
      ]),
    ),
  ));
}
