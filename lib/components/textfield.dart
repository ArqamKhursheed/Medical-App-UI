import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget MyTextField(hint, icon, obs, sufficon) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 14.0),
    child: Container(
      height: 50.h,
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15.r)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          obscureText: obs,
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey.shade400),
              border: InputBorder.none,
              prefixIcon: Icon(icon),
              hintText: hint,
              suffixIcon: Icon(sufficon)),
        ),
      ),
    ),
  );
}
