import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/button.dart';
import 'package:medicalapp/Screens/conrats.dart';
import 'package:medicalapp/components/textfield.dart';
import 'package:medicalapp/components/textfield1.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
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
            'Add New Card',
            style: GoogleFonts.mukta(
                textStyle: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        body: Column(
          children: [
            Image(
              image: AssetImage('assets/creditcard.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Card Name',
                      style: GoogleFonts.mukta(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                ),
              ],
            ),
            TextField1('Card Name', false),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Card Number',
                      style: GoogleFonts.mukta(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                ),
              ],
            ),
            TextField1('Card Number', false),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Expiry Date',
                      style: GoogleFonts.mukta(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text('CVV',
                      style: GoogleFonts.mukta(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 21),
                    child: Container(
                      height: 40.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Colors.grey.shade100,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              border: InputBorder.none,
                              hintText: '09/07/26'),
                        ),
                      ),
                    )),
                Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Container(
                      height: 40.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade100,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          obscureText: false,
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
                              ),
                              border: InputBorder.none,
                              hintText: '699'),
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Congratulations();
                      });
                },
                child: BlueButton(txt: 'Add'))
          ],
        ));
  }
}
