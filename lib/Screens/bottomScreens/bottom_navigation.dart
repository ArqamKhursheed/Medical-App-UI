import 'package:flutter/material.dart';
import 'package:medicalapp/Screens/bottomScreens/apointment.dart';
import 'package:medicalapp/Screens/bottomScreens/articles.dart';
import 'package:medicalapp/Screens/bottomScreens/history.dart';
import 'package:medicalapp/Screens/bottomScreens/profile.dart';
import 'package:medicalapp/Screens/homescreen.dart';
import 'package:medicalapp/components/colors.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  Widget currentScreen = HomeScreen();
  int currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          shape: const CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              height: 55,
              child: Row(
                children: <Widget>[
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Icon(
                      Icons.home_filled,
                      color:
                          currentTab == 0 ? primaryBlue : Colors.grey.shade500,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = Apointment();
                        currentTab = 1;
                      });
                    },
                    child: Icon(
                      Icons.calendar_month,
                      color:
                          currentTab == 1 ? primaryBlue : Colors.grey.shade500,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = History();
                        currentTab = 2;
                      });
                    },
                    child: Icon(
                      Icons.history,
                      color:
                          currentTab == 2 ? primaryBlue : Colors.grey.shade500,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = Article();
                        currentTab = 3;
                      });
                    },
                    child: Icon(
                      Icons.article,
                      color:
                          currentTab == 3 ? primaryBlue : Colors.grey.shade500,
                    ),
                  ),
                  MaterialButton(
                    minWidth: 80,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 4;
                      });
                    },
                    child: Icon(
                      Icons.person,
                      color:
                          currentTab == 4 ? primaryBlue : Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
