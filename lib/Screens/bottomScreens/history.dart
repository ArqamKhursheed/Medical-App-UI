import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/bottomScreens/HistoryScreens/VideoCalls.dart';
import 'package:medicalapp/Screens/bottomScreens/HistoryScreens/VoiceCalls.dart';
import 'package:medicalapp/Screens/bottomScreens/HistoryScreens/messages.dart';
import 'package:medicalapp/Screens/topdoctor.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:medicalapp/components/doctor_container.dart';
import 'package:medicalapp/components/msg.dart';
import 'package:medicalapp/components/voicecall.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Icon(
                        Icons.search_outlined,
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
                    'History',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  bottom: TabBar(
                      labelColor: primaryBlue,
                      indicatorColor: primaryBlue,
                      unselectedLabelColor: Colors.grey.shade500,
                      tabs: [
                        Tab(
                          child: Text("Messages",
                              style: GoogleFonts.mukta(
                                  textStyle: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold))),
                        ),
                        Tab(
                          child: Text("Voice Call",
                              style: GoogleFonts.mukta(
                                  textStyle: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold))),
                        ),
                        Tab(
                          child: Text("Video Call",
                              style: GoogleFonts.mukta(
                                  textStyle: TextStyle(
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ]),
                ),
                body: TabBarView(
                    children: [MsgScreen(), MyVoiceCalls(), MyVideoCalls()]))));
  }
}
