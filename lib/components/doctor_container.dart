import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget DrContainer(img, txt1, txt2) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 120.h,
      width: 400.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      child: Row(children: [
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
                    txt1,
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            height: 1.h)),
                  ),
                  SizedBox(
                    width: 40.h,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: primaryBlue,
                      size: 20.h,
                    ),
                  ),
                ],
              ),
              Text(
                '_____________________________________',
                style: TextStyle(height: 0.1.h, color: Colors.grey.shade400),
              ),
              SizedBox(
                height: 13.h,
              ),
              Row(
                children: [
                  Text(
                    txt2,
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.black, fontSize: 15.sp, height: 1.h)),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star_half_rounded,
                    color: primaryBlue,
                    size: 20.h,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.3',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                    )),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '(43,884 reviews)',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                    )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    ),
  );
}
