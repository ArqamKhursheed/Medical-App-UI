import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalapp/Screens/auth_screens/signup.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Center(
                child: LottieBuilder.asset(
                  'assets/login.json',
                  width: 200.w,
                  height: 200.h,
                ),
              ),
            ),
            Text("Lets you in",
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 60.h,
              width: 320.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(15.r)),
              child: Row(
                children: [
                  SizedBox(
                    width: 70.w,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/fblogo.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Continue with Facebook',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 60.h,
              width: 320.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(15.r)),
              child: Row(
                children: [
                  SizedBox(
                    width: 70.w,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/googlelogo.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Continue with Google',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 60.h,
              width: 320.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(15.r)),
              child: Row(
                children: [
                  SizedBox(
                    width: 70.w,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/applelogo.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Continue with Apple',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Divider(
                    color: Colors.black,
                    height: 36.h,
                  ),
                )),
                Text(
                  '  or',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                      color: Colors.black54),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                  child: Divider(
                    color: Colors.black,
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => LoginScreen())));
                },
                child: MyButton()),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 15.sp,
                  )),
                ),
                SizedBox(
                  width: 10.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SignUpScreen())));
                  },
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: primaryBlue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            )
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
      height: 60.h,
      width: 320.w,
      decoration: BoxDecoration(
          color: primaryBlue,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 5, 122, 168),
                offset: Offset(3.0, 3.0),
                blurRadius: 3.r)
          ]),
      child: Text(
        'Sign in with password',
        style: GoogleFonts.mukta(
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
