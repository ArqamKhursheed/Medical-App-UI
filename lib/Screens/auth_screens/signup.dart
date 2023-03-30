import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/auth_screens/login.dart';
import 'package:medicalapp/Screens/homescreen.dart';
import 'package:medicalapp/components/textfield.dart';
import 'package:medicalapp/components/textfield1.dart';
import 'package:medicalapp/components/textfield2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/colors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            'Fill in Your Profile',
            style: GoogleFonts.mukta(
                textStyle: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 0.h,
            ),
            Center(
              child: CircleAvatar(
                radius: 70.r,
                backgroundImage: AssetImage('assets/saim.jpg'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: TextField1('Full Name', false),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: TextField1('Nick Name', false),
            ),
            TextField2('Date of Birth', Icons.calendar_month_rounded, false),
            TextField2('Email', Icons.email_rounded, false),
            TextField2('Gender', Icons.arrow_drop_down, false),
            SizedBox(
              height: 25.h,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => LoginScreen())));
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
      height: 60.h,
      width: 320.w,
      decoration: BoxDecoration(
        color: primaryBlue,
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Text(
        'Continue ',
        style: GoogleFonts.mukta(
            textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
