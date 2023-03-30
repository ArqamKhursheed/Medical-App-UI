import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalapp/Screens/doc_info.dart';
import 'package:medicalapp/components/doctor_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopDoctor extends StatefulWidget {
  const TopDoctor({super.key});

  @override
  State<TopDoctor> createState() => _TopDoctorState();
}

class _TopDoctorState extends State<TopDoctor> {
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
    return Scaffold(
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
          'Top Doctor',
          style: GoogleFonts.mukta(
              textStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Wrap(
                spacing: 6.w,
                children: techChips(),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => DocInfo())));
              },
              child: DrContainer("assets/Doctor1.jpg", 'Dr.Tarvols Patir',
                  'Cardiologists | Alka Hospital'),
            ),
            DrContainer("assets/Doctor3.jpg", 'Dr.Natinvali Froi',
                'Cardiologists | B&B Hospital'),
            DrContainer("assets/Doctor2.jpg", 'Dr.Bernad Blass',
                'Cardiologists |  Bir Hospital'),
            DrContainer("assets/Doctor4.jpg", 'Dr.Jazda Geuaeo',
                'Cardiologists | Hidew Hospital'),
          ],
        ),
      ),
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

class Tech {
  String label;
  Color color;
  bool isSelected;
  bool unSelected;
  Tech(this.label, this.color, this.isSelected, this.unSelected);
}
