import 'package:flutter/material.dart';
import 'package:medicalapp/Screens/ScrollScreens/page1.dart';
import 'package:medicalapp/Screens/ScrollScreens/page2.dart';
import 'package:medicalapp/Screens/ScrollScreens/page3.dart';
import 'package:medicalapp/Screens/ScrollScreens/page4.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Page1(),
              Page2(),
              Page3(),
              Page4(),
            ],
          ),
          Container(
            alignment: Alignment(0.65, 0.73),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: WormEffect(
                      dotColor: Colors.grey,
                      activeDotColor: primaryBlue,
                      dotHeight: 5.h,
                      dotWidth: 10.w,
                      spacing: 12,
                      radius: 25.r,
                    ),
                    onDotClicked: ((index) {}))
              ],
            ),
          )
        ],
      ),
    );
  }
}
