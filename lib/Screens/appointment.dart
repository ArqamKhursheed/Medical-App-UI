import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/SelectPage.dart';
import 'package:medicalapp/Screens/button.dart';
import 'package:medicalapp/Screens/homescreen.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      Today = day;
    });
  }

  DateTime Today = DateTime.now();
  bool selected = false;
  bool unselected = true;
  List<Tech> _chipsList = [
    Tech("09:00 AM", Colors.white, false),
    Tech("09:30 AM", Colors.white, false),
    Tech("10:00 AM", Colors.white, false),
    Tech("10:30 PM", Colors.white, false),
    Tech("11:00 PM", Colors.white, false),
    Tech("11:30 PM", Colors.white, false),
    Tech(" 15:00 PM", Colors.white, false),
    Tech(" 15:30 PM", Colors.white, false),
    Tech(" 16:00 PM", Colors.white, false),
    Tech(" 16:30 PM", Colors.white, false),
    Tech(" 17:00 PM", Colors.white, false),
    Tech(" 17:30 PM", Colors.white, false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Book Appointment',
          style: GoogleFonts.mukta(
              textStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 8),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20.r)),
              child: TableCalendar(
                  rowHeight: 40.h,
                  focusedDay: Today,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                      weekendStyle: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp)),
                  calendarStyle: CalendarStyle(
                      defaultTextStyle: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.w200,
                          fontSize: 14.sp),
                      weekendTextStyle: TextStyle(
                          fontFamily: 'Mukta',
                          fontWeight: FontWeight.w200,
                          fontSize: 14.sp),
                      isTodayHighlighted: false,
                      outsideDaysVisible: false,
                      selectedDecoration: BoxDecoration(
                          color: primaryBlue, shape: BoxShape.circle)),
                  firstDay: DateTime.utc(2023),
                  lastDay: DateTime.utc(2027),
                  calendarFormat: CalendarFormat.month,
                  headerStyle: HeaderStyle(
                      leftChevronIcon: Icon(
                        Icons.arrow_left_rounded,
                        color: primaryBlue,
                      ),
                      rightChevronIcon: Icon(
                        Icons.arrow_right_rounded,
                        color: primaryBlue,
                      ),
                      titleTextStyle: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.sp),
                      titleCentered: false,
                      formatButtonVisible: false,
                      formatButtonShowsNext: false,
                      headerPadding: EdgeInsets.only(top: 10),
                      headerMargin: EdgeInsets.only(bottom: 10)),
                  onDaySelected: _onDaySelected,
                  selectedDayPredicate: (day) => isSameDay(day, Today)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Select Hours',
                    style: GoogleFonts.mukta(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )),
              ),
            ],
          ),
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceEvenly,
            spacing: 18.w,
            children: techChips(),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SelectPage()));
              },
              child: BlueButton(txt: 'NEXT')),
        ],
      ),
    );
  }

  List<Widget> techChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _chipsList.length; i++) {
      Widget item = Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: FilterChip(
          label: Text(_chipsList[i].label),
          labelStyle: TextStyle(
            color: _chipsList[i].isSelected ? Colors.white : primaryBlue,
          ),
          selectedColor: primaryBlue,
          backgroundColor: Colors.transparent,
          shape: StadiumBorder(
              side: BorderSide(
                  color: primaryBlue, style: BorderStyle.solid, width: 2.5)),
          selected: _chipsList[i].isSelected,
          onSelected: (bool value) {
            selected = value;

            setState(() {
              _chipsList[i].isSelected = value;
              //_chipsList[i].color = primaryBlue;
            });
          },
          showCheckmark: false,
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}

class Tech {
  String label;
  Color color;
  bool isSelected;
  Tech(
    this.label,
    this.color,
    this.isSelected,
  );
}
