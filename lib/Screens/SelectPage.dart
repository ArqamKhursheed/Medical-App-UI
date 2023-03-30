import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/button.dart';
import 'package:medicalapp/Screens/patient_details.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:medicalapp/components/radiobutton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  String? selectedValue;
  List<String> items = [
    '30 Minutes',
    '60 Minutes',
    '120 Minutes',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
            'Select Package',
            style: GoogleFonts.mukta(
                textStyle: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Select Duration',
                      style: GoogleFonts.mukta(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 4),
                  child: Container(
                    height: 50.h,
                    width: 320.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.grey.shade200,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(Icons.watch_later_rounded),
                        ),
                        DropdownButtonHideUnderline(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 5, 0, 5),
                            child: DropdownButton2(
                              hint: Text(
                                'Select Duration',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Theme.of(context).hintColor,
                                ),
                              ),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: GoogleFonts.mukta(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15.sp,
                                            ),
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value as String;
                                });
                              },
                              buttonHeight: 40.h,
                              buttonWidth: 260.w,
                              itemHeight: 40.h,
                              // itemWidth: 140,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Select Package',
                      style: GoogleFonts.mukta(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                ),
              ],
            ),
            MyRadioButton(
              title1: 'Messages                                       ',
              subtitle1: 'Chat messagegs with doctor                   ',
              title2: 'Voice Calls                                    ',
              subtitle2:
                  'Voice Call with doctor                                 ',
              title3: 'Video Calls                                    ',
              subtitle3:
                  'Voice Call with doctor                                 ',
              icon1: Icon(
                Icons.messenger_rounded,
                color: primaryBlue,
              ),
              icon2: Icon(
                Icons.phone_in_talk_rounded,
                color: primaryBlue,
              ),
              icon3: Icon(
                Icons.video_call_rounded,
                color: primaryBlue,
              ),
            ),
            SizedBox(height: 70.h),
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PatientDetail()));
                },
                child: BlueButton(txt: 'Next'))
          ],
        ),
      ),
    );
  }
}
