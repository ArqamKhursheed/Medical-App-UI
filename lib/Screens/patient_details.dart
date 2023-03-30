import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/button.dart';
import 'package:medicalapp/Screens/conrats.dart';
import 'package:medicalapp/Screens/new_card.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:medicalapp/components/payment_radiobutton.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PatientDetail extends StatefulWidget {
  const PatientDetail({super.key});

  @override
  State<PatientDetail> createState() => _PatientDetailState();
}

class _PatientDetailState extends State<PatientDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.document_scanner_outlined,
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
          'Payments',
          style: GoogleFonts.mukta(
              textStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Select the payment method you want to use.',
                style: GoogleFonts.mukta(
                    textStyle: TextStyle(
                        fontSize: 17.sp, fontWeight: FontWeight.w500)),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          NewRadioButton(
              mytitle1: 'Paypal',
              mytitle2: 'Google Pay',
              mytitle3: 'Apple Pay',
              image1: Image(
                image: AssetImage(
                  'assets/paypallogo.png',
                ),
                height: 45.h,
                width: 43.w,
              ),
              image2: Image(
                image: AssetImage('assets/googlelogo.png'),
                height: 40.h,
                width: 40.w,
              ),
              image3: Image(
                image: AssetImage('assets/applelogo.png'),
                height: 40.h,
                width: 40.w,
              )),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddNewCard()));
              },
              child: MyButton()),
          SizedBox(
            height: 130.h,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Congratulations()));
              },
              child: BlueButton(txt: 'Next'))
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
        color: primaryBlue.withOpacity(.1),
        borderRadius: BorderRadius.circular(25.r),
      ),
      child: Text(
        'Add new card ',
        style: GoogleFonts.mukta(
            textStyle: TextStyle(
                color: primaryBlue,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
