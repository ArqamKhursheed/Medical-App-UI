import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/auth_screens/signup.dart';
import 'package:medicalapp/Screens/bottomScreens/bottom_navigation.dart';
import 'package:medicalapp/components/textfield.dart';

import '../../components/colors.dart';
import '../homescreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Image.asset(
              'assets/medlogo.png',
              height: 120.h,
              width: 120.w,
            ),
            SizedBox(
              height: 20.h,
            ),
            Text("Login to your account",
                textAlign: TextAlign.center,
                style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold))),
            SizedBox(
              height: 20.h,
            ),
            MyTextField(
                'Email', Icons.email_rounded, false, Icons.attach_email),
            MyTextField('Password', Icons.lock_open_outlined, true,
                Icons.remove_red_eye),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => BottomNavigation())));
                },
                child: MyButton()),
            SizedBox(
              height: 14.h,
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
                  '  or continue with',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: Colors.black54),
                ),
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Divider(
                    color: Colors.black,
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Center(
                    child: Image.asset(
                      'assets/fblogo.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Center(
                    child: Image.asset(
                      'assets/googlelogo.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  height: 60.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Center(
                    child: Image.asset(
                      'assets/applelogo.png',
                      height: 30.h,
                      width: 30.w,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
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
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Text(
        'Sign in ',
        style: GoogleFonts.mukta(
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
