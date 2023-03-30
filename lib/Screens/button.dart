import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueButton extends StatelessWidget {
  String txt;

  BlueButton({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60.h,
      width: 320.w,
      decoration: BoxDecoration(
        color: primaryBlue,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Text(
        txt,
        style: GoogleFonts.mukta(
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
    ;
  }
}
