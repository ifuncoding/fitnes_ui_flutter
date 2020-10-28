import 'package:fitness_app/config/global_styles.dart';
import 'package:fitness_app/config/palette.dart';
import 'package:fitness_app/screens/home/components/header_home_container.dart';
import 'package:fitness_app/screens/home/components/tab_selection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
        Expanded(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
            child: Container(
              padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Goals'),
                      Container(
                        decoration: BoxDecoration(
                            color: Palette.primary,
                            borderRadius: BorderRadius.circular(16.0)),
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 8.0, 20.0, 8.0),
                          child: Text(
                            'Change my goals',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                    child: Row(
                      children: [
                        Text(
                          'Weekly',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Palette.primary,
                          ),
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          'Monthly',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                          ),
                        ),
                        SizedBox(width: 12.0),
                        Text(
                          'Daily',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: new CircularPercentIndicator(
                          radius: 100.0,
                          lineWidth: 6.0,
                          animation: true,
                          percent: 0.47,
                          center: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "47",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 28.0,
                                      color: Palette.text),
                                ),
                                Text(
                                  " %",
                                  style: new TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                      color: Palette.text),
                                ),
                              ],
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Palette.primary,
                          backgroundColor: Colors.black12,
                        ),
                      ),
                      SizedBox(width: 12.0),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Palette.bg_btn,
                                  borderRadius: BorderRadius.circular(45.0),
                                ),
                                child:
                                    SvgPicture.asset('assets/icons/clock.svg'),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('250/300'),
                                  SizedBox(height: 4.0),
                                  new LinearPercentIndicator(
                                    width: 120.0,
                                    lineHeight: 6.0,
                                    percent: 0.8,
                                    progressColor: Palette.primary,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Palette.bg_btn,
                                  borderRadius: BorderRadius.circular(45.0),
                                ),
                                child: SvgPicture.asset(
                                    'assets/icons/stricks.svg'),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('250/300'),
                                  SizedBox(height: 4.0),
                                  new LinearPercentIndicator(
                                    width: 120.0,
                                    lineHeight: 6.0,
                                    percent: 0.8,
                                    progressColor: Palette.primary,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
