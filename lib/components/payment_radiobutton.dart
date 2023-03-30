import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewRadioButton extends StatefulWidget {
  String mytitle1;
  String mytitle2;
  String mytitle3;
  Image image1;
  Image image2;
  Image image3;

  NewRadioButton(
      {super.key,
      required this.mytitle1,
      required this.mytitle2,
      required this.mytitle3,
      required this.image1,
      required this.image2,
      required this.image3});

  @override
  State<NewRadioButton> createState() => _NewRadioButtonState();
}

class _NewRadioButtonState extends State<NewRadioButton> {
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
          padding: const EdgeInsets.fromLTRB(2.0, 8, 16, 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: Colors.white,
            ),
            height: 70.h,
            width: 400.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
              child: Center(
                child: Row(
                  children: [
                    widget.image1,
                    Container(
                      height: 60.h,
                      width: 283.w,
                      child: RadioListTile(
                          title: Text(
                            widget.mytitle1,
                            style: GoogleFonts.mukta(
                                textStyle: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
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
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            height: 70.h,
            width: 400.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(13.0, 0, 0, 0),
              child: Center(
                child: Row(
                  children: [
                    widget.image2,
                    Container(
                      height: 60.h,
                      width: 283.w,
                      child: RadioListTile(
                          title: Text(
                            widget.mytitle2,
                            style: GoogleFonts.mukta(
                                textStyle: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
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
          padding: const EdgeInsets.fromLTRB(6.0, 8, 16, 5),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            height: 70.h,
            width: 400.w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 0),
              child: Center(
                child: Row(
                  children: [
                    widget.image3,
                    Container(
                      height: 60.h,
                      width: 283.w,
                      child: RadioListTile(
                          title: Text(
                            widget.mytitle3,
                            style: GoogleFonts.mukta(
                                textStyle: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold)),
                          ),
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
