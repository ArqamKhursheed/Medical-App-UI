import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/fav.dart';
import 'package:medicalapp/Screens/notifications.dart';
import 'package:medicalapp/Screens/topdoctor.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:medicalapp/components/textfield.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _controller = PageController();
  bool selected = false;
  bool unselected = false;
  List<Tech> _chipsList = [
    Tech("All", Colors.blue, false, true),
    Tech("Genearl", Colors.blue, false, true),
    Tech("Dentist", Colors.blue, false, true),
    Tech("Nutritionist", Colors.blue, false, true),
    // Tech("Go lang", Colors.blue, false)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 23.r,
              backgroundImage: AssetImage('assets/saim.jpg'),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Row(
                children: [
                  Text(
                    'Good Morning',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w200)),
                  ),
                  Image.asset(
                    'assets/hi2.png',
                    height: 20.h,
                    width: 40.w,
                  ),
                ],
              ),
            ),
            subtitle: Text(
              'Andrew Ainsley',
              style: GoogleFonts.mukta(
                  textStyle: TextStyle(
                      height: 1.2.h,
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500)),
            ),
            trailing: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Wrap(spacing: 12, children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Notification1()));
                  },
                  child: Icon(
                    Icons.notifications_active_outlined,
                    size: 30.h,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Favorite()));
                  },
                  child: Icon(
                    Icons.favorite_border_rounded,
                    size: 30.h,
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          MyTextField('Search', Icons.search, false, Icons.clear),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            child: Container(
              height: 169.h,
              width: 340.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Colors.black,
                  image: DecorationImage(
                      opacity: 2,
                      colorFilter: ColorFilter.mode(
                          Colors.lightBlueAccent, BlendMode.softLight),
                      image: AssetImage('assets/containerbg.jpg'),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Positioned(
                      right: 160.w,
                      bottom: 116.h,
                      child: Text(
                        'Medical Checks!',
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 26.sp,
                                fontWeight: FontWeight.bold)),
                      )),
                  Positioned(
                      right: 120.w,
                      bottom: 65.h,
                      child: Text(
                        ' Check your health consultation daily \n to minimize the incidence of disease in \n the future',
                        style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                height: 1.2.h,
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.normal)),
                      )),
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.80),
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: WormEffect(
                        dotColor: Colors.white,
                        dotHeight: 5.h,
                        dotWidth: 8.w,
                      ),
                    ),
                  ),
                  Align(
                      alignment: AlignmentDirectional(-0.90, 0.70),
                      child: MyButton()),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(
                      'assets/doctorbg.png',
                      height: 159.h,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Doctor Speciality',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.black))),

                //   SizedBox(width: 100),
                Text(
                  'Sell All',
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: primaryBlue)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey.shade300,
                  child: Image.asset(
                    "assets/generalicon.png",
                    height: 30.h,
                    width: 30.w,
                  )),
              CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey.shade300,
                  child: Image.asset(
                    "assets/dentisticon.png",
                    height: 30.h,
                    width: 30.w,
                  )),
              CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey.shade300,
                  child: Image.asset(
                    "assets/othologyicon.png",
                    height: 40.h,
                    width: 40.w,
                  )),
              CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey.shade300,
                  child: Image.asset(
                    "assets/nutritionicon.png",
                    height: 30.h,
                    width: 30.w,
                  )),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("General",
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: Colors.black))),
              Text("Dentist",
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: Colors.black))),
              Text("Ophthal",
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: Colors.black))),
              Text("Nutrition",
                  style: GoogleFonts.mukta(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: Colors.black))),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey.shade300,
                  child: Image.asset(
                    "assets/neurologyicon.png",
                    height: 40.h,
                    width: 40.w,
                  )),
              CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey.shade300,
                  child: Image.asset(
                    "assets/pedriaticicon.png",
                    height: 40.h,
                    width: 40.w,
                  )),
              CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey.shade300,
                  child: Image.asset(
                    "assets/radiologyicon.png",
                    height: 40.h,
                    width: 40.w,
                  )),
              CircleAvatar(
                  radius: 23.r,
                  backgroundColor: Colors.grey.shade300,
                  child: Image.asset(
                    "assets/moreicon.png",
                    height: 26.h,
                    width: 26.w,
                  )),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Neurolo..",
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            color: Colors.black))),
                Text("Pediatric",
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            color: Colors.black))),
                Text("Radiolo..",
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            color: Colors.black))),
                Text("More",
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                            color: Colors.black))),
              ],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Doctor',
                    style: GoogleFonts.mukta(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                            color: Colors.black))),
                //   SizedBox(width: 100),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => TopDoctor())));
                  },
                  child: Text('Sell All',
                      style: GoogleFonts.mukta(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: primaryBlue))),
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 6.w,
            direction: Axis.horizontal,
            children: techChips(),
          )
        ],
      )),
    );
  }

  List<Widget> techChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _chipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 10, right: 5),
        child: FilterChip(
          label: Text(_chipsList[i].label),
          labelStyle: TextStyle(color: Colors.white),
          backgroundColor: _chipsList[i].color,
          selected: _chipsList[i].isSelected,
          onSelected: (bool value) {
            selected = value;
            setState(() {
              _chipsList[i].isSelected = value;
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

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        'Check Now ',
        style: GoogleFonts.mukta(
            textStyle: TextStyle(
                color: primaryBlue,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600)),
      ),
    );
  }
}

class Tech {
  String label;
  Color color;
  bool isSelected;
  bool unSelected;
  Tech(this.label, this.color, this.isSelected, this.unSelected);
}
