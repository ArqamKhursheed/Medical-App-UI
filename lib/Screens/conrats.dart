import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Congratulations extends StatelessWidget {
  const Congratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Container(
        width: 400.w,
        height: 500.h,
        child: Column(
          children: [
            Image.asset(
              'assets/checkout.PNG',
              height: 230.h,
              width: 200.w,
            ),
            Text(
              'Congratulation!',
              style: GoogleFonts.urbanist(
                  textStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: primaryBlue)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Appointment Successfully booked\nYou will recieve the notification and the\ndoctor you selected will contact you',
              textAlign: TextAlign.center,
              style: GoogleFonts.mukta(
                  textStyle: TextStyle(
                fontSize: 15.sp,
                color: Colors.black,
              )),
            ),
            SizedBox(
              height: 25.h,
            ),
            MyNewButton(),
            SizedBox(
              height: 12.h,
            ),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: MyButton()),
          ],
        ),
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
      height: 55.h,
      width: 250.w,
      decoration: BoxDecoration(
        color: primaryBlue.withOpacity(.1),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Text(
        'Cancle',
        style: GoogleFonts.mukta(
            textStyle: TextStyle(
                color: primaryBlue,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class MyNewButton extends StatelessWidget {
  const MyNewButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 55.h,
      width: 250.w,
      decoration: BoxDecoration(
        color: primaryBlue,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Text(
        'View Appoitment',
        style: GoogleFonts.mukta(
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 17.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
