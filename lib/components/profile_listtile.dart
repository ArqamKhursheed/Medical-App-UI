import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget ProfileTile(
  String name,
  Icon icon,
) {
  return Container(
    height: 37.h,
    width: 410.w,
    child: ListTile(
      title: Text(
        name,
        style: GoogleFonts.mukta(
            textStyle: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black)),
      ),
      leading: icon,
      trailing: LineIcon.arrowRight(),
    ),
  );
}
