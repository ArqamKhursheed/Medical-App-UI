import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/appointment.dart';
import 'package:medicalapp/Screens/button.dart';
import 'package:medicalapp/Screens/homescreen.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:medicalapp/components/custom_button.dart';
import 'package:medicalapp/components/doctor_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocInfo extends StatefulWidget {
  const DocInfo({super.key});

  @override
  State<DocInfo> createState() => _DocInfoState();
}

class _DocInfoState extends State<DocInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
            ),
          ),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Dr Travols Patir',
          style: GoogleFonts.mukta(
              textStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.r),
                topRight: Radius.circular(40.r)),
          ),
          child: Center(
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookAppointment()));
                  },
                  child: BlueButton(txt: 'Book Appointment'))),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120.h,
                width: 400.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(children: [
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        image: DecorationImage(
                            image: AssetImage('assets/Doctor1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Dr. Travis Westavy',
                              style: GoogleFonts.mukta(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                      height: 1.5.h)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          '_____________________________________',
                          style: TextStyle(
                              height: 0.1.h, color: Colors.grey.shade400),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text('Immunologist'),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Christ Hospital in London, UK',
                              style: GoogleFonts.mukta(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.sp,
                                      height: 1.5.h)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(height: 18.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                      radius: 23.r,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.people_alt_rounded)),
                  CircleAvatar(
                      radius: 23.r,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.verified_user_outlined)),
                  CircleAvatar(
                      radius: 23.r,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.star_half_rounded)),
                  CircleAvatar(
                      radius: 23.r,
                      backgroundColor: Colors.blue.shade50,
                      child: Icon(Icons.insert_comment_rounded)),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("5000+",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                                color: primaryBlue))),
                    Text("10+",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                                color: primaryBlue))),
                    Text("    4.8",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                                color: primaryBlue))),
                    Text(" 4800",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                                color: primaryBlue))),
                  ],
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Patients",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: Colors.black))),
                    Text("years Ex.",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: Colors.black))),
                    Text("Ratings",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: Colors.black))),
                    Text("Comments",
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13.sp,
                                color: Colors.black))),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("About me",
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.black))),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 4, 0, 4),
                    child: Text(
                      'Dr. Travis is the top immunologists specialist in the\nChrist hospital in london. He achieved several awards\nfor his wondderful contribution in medical field. he is\navailable for private consultation.',
                      style: GoogleFonts.mukta(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              height: 1.5.h)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Working Time",
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.black))),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 4, 0, 4),
                    child: Text(
                      'Monday - Friday, 08:00 AM - 20:00 PM',
                      style: GoogleFonts.mukta(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              height: 1.5.h)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Reviews',
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                                color: Colors.black))),
                    //   SizedBox(width: 100),
                    Text('See All',
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp,
                                color: primaryBlue))),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Saim Ahmed',
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.sp)),
                ),
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star,
                      color: primaryBlue,
                      size: 20.h,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Icon(
                      Icons.more_horiz_outlined,
                      color: primaryBlue,
                    )
                  ],
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/saim.jpg'),
                  radius: 23.r,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  '  This the best doctor, I have seen in my life.\n  I love him...',
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(fontSize: 15.sp), height: 1.2.h),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
