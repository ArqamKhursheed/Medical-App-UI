import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:medicalapp/components/profile_listtile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool notification = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10, 0, 10),
          child: Image(
            image: AssetImage(
              'assets/medlogo.png',
            ),
          ),
        ),
        title: Text(
          'Profile',
          style: GoogleFonts.mukta(
              textStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50.r,
              backgroundImage: AssetImage('assets/saim.jpg'),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Andrew Ainsley",
            style: GoogleFonts.mukta(
                textStyle:
                    TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold)),
          ),
          Text(
            "0314-2297598",
            style: GoogleFonts.mukta(
                textStyle:
                    TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w500)),
          ),
          Text(
            '  ___________________________________________________________',
            style: TextStyle(color: Colors.grey.shade200),
          ),
          ProfileTile(
              'Profile',
              LineIcon.user(
                size: 25.h,
                color: Colors.black87,
              )),
          ProfileTile(
              'Notifications',
              Icon(
                Icons.circle_notifications,
                color: Colors.black87,
              )),
          ProfileTile(
              'Payment',
              LineIcon.moneyBill(
                size: 25.h,
                color: Colors.black87,
              )),
          ProfileTile(
              'Security',
              LineIcon.userShield(
                size: 25.h,
                color: Colors.black87,
              )),
          ProfileTile(
              'Language',
              LineIcon.language(
                size: 25.h,
                color: Colors.black87,
              )),
          Container(
            height: 40.h,
            child: SwitchListTile(
                activeColor: primaryBlue,
                secondary: Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.black87,
                ),
                value: notification,
                title: Text(
                  'Dark Mode',
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),
                onChanged: ((value) {
                  setState(() {
                    notification = !notification;
                    notification
                        ? AdaptiveTheme.of(context).setLight()
                        : AdaptiveTheme.of(context).setDark();
                  });
                })),
          ),
          ProfileTile(
              'Help Centre',
              LineIcon.helpingHands(
                size: 25.h,
                color: Colors.black87,
              )),
          ProfileTile(
              'Invite Friends',
              LineIcon.users(
                size: 25.h,
                color: Colors.black87,
              )),
          Container(
            height: 40.h,
            width: 410.w,
            child: ListTile(
              title: Text(
                'Logout',
                style: GoogleFonts.mukta(
                    textStyle: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.redAccent)),
              ),
              leading: LineIcon.doorOpen(
                size: 25.h,
                color: Colors.redAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
