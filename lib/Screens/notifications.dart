import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';

class Notification1 extends StatefulWidget {
  const Notification1({Key? key}) : super(key: key);

  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              toolbarHeight: 60,
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
                'Notifications',
                style: GoogleFonts.mukta(
                    textStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    child: ListTile(
                      leading: Icon(
                        Icons.cancel_outlined,
                        color: Colors.blue,
                        size: 30,
                      ),
                      title: Text(
                        'Appointment Cancelled !',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Today | 15:36 PM',
                        style: const TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'New',
                            style: const TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                              //fontweigth: fontweight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, top: 5),
                    child: Text(
                      "you have sucessfully canceled your appointment with Dr Alan Watson \non December 24, 2024, 13:00 p.m 80% of the funds will be returned to your account",
                      style: const TextStyle(
                        fontSize: 11,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                        //fontweigth: fontweight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/schedule.png',
                        height: 30,
                        width: 40,
                      ),
                      title: Text(
                        'Schedule Changed',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Today | 15:36 PM',
                        style: const TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      trailing: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'New',
                            style: const TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                              //fontweigth: fontweight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "you have sucessfully canceled your appointment with Dr"
                      "\nAlan Watson on December 24, 2024, 13:00 p.m 80% of the"
                      "/nfunds will be returned to your account",
                      style: const TextStyle(
                        fontSize: 10,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                        //fontweigth: fontweight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/schedule.png',
                        height: 30,
                        width: 40,
                      ),
                      title: Text(
                        'Appointment Success!',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Today | 15:36 PM',
                        style: const TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      // trailing: Container(
                      //   height: 40,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //     color: Colors.blue,
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child: Center(
                      //     child: Text(
                      //       'New',
                      //       style: const TextStyle(
                      //         fontSize: 15,
                      //         // fontWeight: FontWeight.bold,
                      //         color: Colors.black,
                      //         //fontweigth: fontweight.bold,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "you have sucessfully canceled your appointment with Dr"
                      "\nAlan Watson on December 24, 2024, 13:00 p.m 80% of the"
                      "/nfunds will be returned to your account",
                      style: const TextStyle(
                        fontSize: 10,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                        //fontweigth: fontweight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/cloud-computing.png',
                        height: 40,
                        width: 40,
                      ),
                      title: Text(
                        'New Services Available!',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Today | 15:36 PM',
                        style: const TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      // trailing: Container(
                      //   height: 40,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //     color: Colors.blue,
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child: Center(
                      //     child: Text(
                      //       'New',
                      //       style: const TextStyle(
                      //         fontSize: 15,
                      //         // fontWeight: FontWeight.bold,
                      //         color: Colors.black,
                      //         //fontweigth: fontweight.bold,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "you have sucessfully canceled your appointment with Dr"
                      "\nAlan Watson on December 24, 2024, 13:00 p.m 80% of the"
                      "/nfunds will be returned to your account",
                      style: const TextStyle(
                        fontSize: 10,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                        //fontweigth: fontweight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/creditcard.png',
                        height: 40,
                        width: 40,
                      ),
                      title: Text(
                        'Credit Card Connected !',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Today | 15:36 PM',
                        style: const TextStyle(
                          fontSize: 10,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black,
                          //fontweigth: fontweight.bold,
                        ),
                      ),
                      // trailing: Container(
                      //   height: 40,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //     color: Colors.blue,
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      //   child: Center(
                      //     child: Text(
                      //       'New',
                      //       style: const TextStyle(
                      //         fontSize: 15,
                      //         // fontWeight: FontWeight.bold,
                      //         color: Colors.black,
                      //         //fontweigth: fontweight.bold,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "you have sucessfully canceled your appointment with Dr"
                      "\nAlan Watson on December 24, 2024, 13:00 p.m 80% of the"
                      "/nfunds will be returned to your account",
                      style: const TextStyle(
                        fontSize: 10,
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                        //fontweigth: fontweight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
