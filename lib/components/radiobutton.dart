import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRadioButton extends StatefulWidget {
  String title1;
  String subtitle1;
  Icon? icon1;
  String title2;
  String subtitle2;
  Icon? icon2;
  String title3;
  String subtitle3;
  Icon? icon3;
  MyRadioButton(
      {super.key,
      required this.title1,
      required this.subtitle1,
      this.icon1,
      required this.title2,
      required this.subtitle2,
      this.icon2,
      required this.title3,
      required this.subtitle3,
      this.icon3});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  var selectedRadio = 0;

  @override
  void iniState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(var val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(9.0, 8, 16, 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: Colors.white,
            ),
            height: 85.h,
            width: 400.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(13.0, 0, 0, 0),
              child: Center(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 23.r,
                      child: widget.icon1,
                      backgroundColor: Colors.blue.shade50,
                    ),
                    Container(
                      height: 70.h,
                      width: 283.w,
                      child: RadioListTile(
                          title: RichText(
                              text: TextSpan(
                                  text: (widget.title1),
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold)),
                                  children: [
                                TextSpan(
                                  text: 'Rs.20',
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                          color: primaryBlue,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold)),
                                )
                              ])),
                          subtitle: RichText(
                              text: TextSpan(
                                  text: (widget.subtitle1),
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12.sp,
                                  )),
                                  children: [
                                TextSpan(
                                  text: '/30 min',
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12.sp,
                                  )),
                                )
                              ])),
                          value: 1,
                          visualDensity:
                              VisualDensity(horizontal: 0.8, vertical: 0.5),
                          toggleable: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          groupValue: selectedRadio,
                          onChanged: (val) {
                            setState(() {
                              setSelectedRadio(val);
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(9.0, 8, 16, 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: Colors.white,
            ),
            height: 85.h,
            width: 400.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(13.0, 0, 0, 0),
              child: Center(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 23.r,
                      child: widget.icon2,
                      backgroundColor: Colors.blue.shade50,
                    ),
                    Container(
                      height: 70.h,
                      width: 283.w,
                      child: RadioListTile(
                          title: RichText(
                              text: TextSpan(
                                  text: (widget.title2),
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold)),
                                  children: [
                                TextSpan(
                                  text: 'Rs.40',
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                          color: primaryBlue,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold)),
                                )
                              ])),
                          subtitle: RichText(
                              text: TextSpan(
                                  text: (widget.subtitle2),
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12.sp,
                                  )),
                                  children: [
                                TextSpan(
                                  text: '/30 mins',
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12.sp,
                                  )),
                                )
                              ])),
                          value: 2,
                          visualDensity:
                              VisualDensity(horizontal: 0.8, vertical: 0.5),
                          toggleable: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          groupValue: selectedRadio,
                          onChanged: (val) {
                            setState(() {
                              setSelectedRadio(val);
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8, 16, 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: Colors.white,
            ),
            height: 85.h,
            width: 400.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(9.0, 0, 0, 0),
              child: Center(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 23.r,
                      child: widget.icon3,
                      backgroundColor: Colors.blue.shade50,
                    ),
                    Container(
                      height: 70.h,
                      width: 283.w,
                      child: RadioListTile(
                          title: RichText(
                              text: TextSpan(
                                  text: (widget.title3),
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold)),
                                  children: [
                                TextSpan(
                                  text: 'Rs.60',
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                          color: primaryBlue,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold)),
                                )
                              ])),
                          subtitle: RichText(
                              text: TextSpan(
                                  text: (widget.subtitle3),
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12.sp,
                                  )),
                                  children: [
                                TextSpan(
                                  text: '/30 mins',
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 12.sp,
                                  )),
                                )
                              ])),
                          value: 3,
                          visualDensity:
                              VisualDensity(horizontal: 0.8, vertical: 0.5),
                          toggleable: true,
                          controlAffinity: ListTileControlAffinity.trailing,
                          groupValue: selectedRadio,
                          onChanged: (val) {
                            setState(() {
                              setSelectedRadio(val);
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
