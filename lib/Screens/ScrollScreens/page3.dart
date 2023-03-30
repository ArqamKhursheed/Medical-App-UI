import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/colors.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/introbg1.PNG',
                fit: BoxFit.cover,
              ),
            ],
          ),
          Positioned(
              bottom: 0.h,
              child: Container(
                height: 280.h,
                width: 360.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60.r),
                        topLeft: Radius.circular(60.r))),
              )),
          Positioned(
            right: 60.w,
            bottom: 110.h,
            child: Text(
                "Let's Start Living&"
                "\nHealthy and Well \n with us Right Now",
                textAlign: TextAlign.center,
                style: GoogleFonts.mukta(
                    textStyle: TextStyle(
                        height: 1.2.h,
                        color: primaryBlue,
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold))),
          ),
          Positioned(bottom: 10.h, right: 20.w, child: MyButton())

          // SizedBox(
          //   height: 10,
          // ),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60.h,
      width: 320.w,
      decoration: BoxDecoration(
          color: primaryBlue,
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 84, 184, 223),
                offset: Offset(5.0, 5.0),
                blurRadius: 15.r)
          ]),
      child: Text(
        'Next',
        style: TextStyle(color: Colors.white, fontSize: 24.sp),
      ),
    );
  }
}
