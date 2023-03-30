import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/colors.dart';
import '../auth_screens/Auth.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50.h,
              ),
              Lottie.asset('assets/splash1.json'),
            ],
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: 200.h,
                width: 412.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(6.r),
                        topLeft: Radius.circular(6.r))),
              )),
          Positioned(
            right: 60.w,
            bottom: 120.h,
            child: Text(
                " Lets start living\n healthy and well \n with us right now",
                textAlign: TextAlign.center,
                style: GoogleFonts.mukta(
                    textStyle: TextStyle(
                        height: 1.2.h,
                        color: primaryBlue,
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold))),
          ),
          Positioned(bottom: 15.h, right: 20.w, child: MyButton())

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
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => AuthenticationPage())));
        },
        child: Text(
          'Get Started',
          style: TextStyle(
              color: Colors.white,
              fontSize: 24.sp,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
