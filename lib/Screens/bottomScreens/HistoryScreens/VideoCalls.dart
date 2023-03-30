import 'package:flutter/material.dart';

import '../../../components/voicecall.dart';

class MyVideoCalls extends StatelessWidget {
  const MyVideoCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          VoiceCall('Dr.Travis Westbaby', 'video Call',
              'Dec 05,2022 | 15:00 PM', 'assets/Doctor1.jpg'),
          VoiceCall('Dr.Keegan Dach', 'video Call', 'Dec 05,2022 | 15:00 PM',
              'assets/Doctor2.jpg'),
          VoiceCall('Dr.Robert Frost', 'video Call', 'Dec 05,2022 | 15:00 PM',
              'assets/Doctor3.jpg'),
          VoiceCall('Dr. Drake Boison', 'video Call', 'Dec 05,2022 | 15:00 PM',
              'assets/Doctor4.jpg'),
        ],
      ),
    );
  }
}
