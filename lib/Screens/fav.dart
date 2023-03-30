import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:medica/bottomtabs/homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/doctor_container.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
            'Favorites',
            style: GoogleFonts.mukta(
                textStyle: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              DrContainer("assets/Doctor3.jpg", 'Dr.Natinvali Froi',
                  'Cardiologists | B&B Hospital'),
              DrContainer("assets/Doctor2.jpg", 'Dr.Bernad Blass',
                  'Cardiologists |  Bir Hospital'),
              DrContainer("assets/Doctor4.jpg", 'Dr.Jazda Geuaeo',
                  'Cardiologists | Hidew Hospital'),
              DrContainer("assets/Doctor1.jpg", 'Dr.Bernad Blass',
                  'Cardiologists |  Bir Hospital'),
              DrContainer("assets/Doctor4.jpg", 'Dr.Jazda Geuaeo',
                  'Cardiologists | Hidew Hospital'),
              //
              //
            ],
          ),
        ),
      ),
    );
  }
}
