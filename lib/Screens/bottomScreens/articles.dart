import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:medicalapp/components/article_card.dart';
import 'package:medicalapp/components/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../appointment.dart';

class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  bool selected = false;
  bool unselected = true;
  List<Tech> _chipsList = [
    Tech("Newest", Colors.white, false),
    Tech("Health", Colors.white, false),
    Tech("Covid-19", Colors.white, false),
    Tech("Lifestyle", Colors.white, false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.w,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: (Icon(
              Icons.menu,
              color: Colors.black,
            )),
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
          'Articles',
          style: GoogleFonts.mukta(
              textStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Wrap(
                  spacing: 6.w,
                  children: techChips(),
                ),
              ),
            ),
            Article_Card(
                'Dec 22,2022',
                'Covid-19 was a top cause\nof death in 2020 and 2021.\nEven for younder people ',
                'Covid-19',
                'assets/article1.jpg'),
            Article_Card(
                'Dec 22,2022',
                'Study finds being hungry is\na real thing',
                'health',
                'assets/article2.jpg'),
            Article_Card(
                'Dec 22,2022',
                'Why Childhood Obesity\nRates are rising and What\nWe Can Do',
                'Lifestyle',
                'assets/article3.jpg'),
            Article_Card(
                'Dec 22,2022',
                'Drinking Alone as a Teen\nMay foreshadow Future.\nAlcohol Problems',
                'Covid-19',
                'assets/article4.jpg'),
            Article_Card(
                'Dec 22,2022',
                'Covid-19 was a top cause\nof death in 2020 and 2021.\nEven for younder people ',
                'Covid-19',
                'assets/article5.jpg')
          ],
        ),
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
                  color: primaryBlue, style: BorderStyle.solid, width: 2.5.w)),
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
