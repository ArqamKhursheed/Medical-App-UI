import 'package:flutter/material.dart';

import '../../../components/msg.dart';

class MsgScreen extends StatelessWidget {
  const MsgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyMsg("Dr Travis Westbaby", "you are best doctor!!",
            'assets/Doctor1.jpg'),
        MyMsg("Dr Robert Frost", "Now I am Feeling well", 'assets/Doctor2.jpg'),
        MyMsg(
            "Dr Keegan Dach", "Okay i wil do exercise ", 'assets/Doctor3.jpg'),
        MyMsg("Dr Florida", "you are best doctor so far", 'assets/Doctor4.jpg'),
        MyMsg("Dr Mehmat Changez", "yes i am alive", 'assets/Doctor2.jpg'),
        MyMsg("Dr Keegan Dach", "Dr I have pain in my heart",
            'assets/Doctor3.jpg'),
      ],
    );
  }
}
