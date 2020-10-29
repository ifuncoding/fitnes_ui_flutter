import 'package:fitness_app/screens/home/components/card_goal_detail.dart';
import 'package:fitness_app/screens/home/components/header_home_container.dart';
import 'package:fitness_app/screens/home/components/tab_selection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  static const h1 = TextStyle(
      color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final List<String> _listIcon = [
    'assets/icons/running.svg',
    'assets/icons/menu_2.svg',
    'assets/icons/bike.svg',
    'assets/icons/apple.svg',
  ];

  int indexTab = 0;

  setIndex(int i) {
    setState(() {
      indexTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderHomeContainer(size: size, h1: HomeBody.h1),
        TabSelection(
          size: size,
          listIcon: _listIcon,
          indexTab: indexTab,
          setIndex: setIndex,
        ),
        CartGoalDetail()
      ],
    );
  }
}
