import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget Article_Card(String date, String topic, String genre, String img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 129.h,
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
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
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
                    date,
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                            height: 1.5.h)),
                  ),
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Text(
                topic,
                style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                        fontSize: 17.sp, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Container(
                    height: 23.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: primaryBlue.withOpacity(.1),
                    ),
                    child: Center(
                      child: Text(
                        genre,
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                color: primaryBlue,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    ),
  );
}
