import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget MyMsg(String name, String sub_title, String url) {
  return ListTile(
    title: Text(
      name,
      style:
          GoogleFonts.mukta(textStyle: TextStyle(fontWeight: FontWeight.bold)),
    ),
    subtitle: Text(
      sub_title,
      style: GoogleFonts.mukta(
          textStyle: TextStyle(fontSize: 15.sp, height: 1.3.h)),
    ),
    leading: CircleAvatar(backgroundImage: AssetImage(url)),
    trailing: Text(
      "Yesterday \n 6:30 pm",
      style: TextStyle(height: 1.4.h),
    ),
  );
}
