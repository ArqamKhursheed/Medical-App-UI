import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget TextField1(hint, obs) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
    child: Container(
      margin: EdgeInsets.only(right: 15),
      height: 50.h,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(15.r)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: TextField(
          obscureText: obs,
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 14.sp,
              fontWeight: FontWeight.w300,
            ),
            border: InputBorder.none,
            hintText: hint,
          ),
        ),
      ),
    ),
  );
}
