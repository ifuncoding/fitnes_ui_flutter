import 'package:fitness_app/config/palette.dart';
import 'package:fitness_app/screens/stay_fit.dart/fit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CartGoalDetail extends StatelessWidget {
  const CartGoalDetail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0),
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
                  Text(
                    'Goals',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FitnessScreen(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 20.0, 8.0),
                        child: Text(
                          'Change my goals',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                              fontWeight: FontWeight.w500),
                        ),
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
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 12.0),
                    Text(
                      'Monthly',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 12.0),
                    Text(
                      'Daily',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.w600,
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
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Palette.bg_btn,
                              borderRadius: BorderRadius.circular(45.0),
                            ),
                            child: SvgPicture.asset('assets/icons/clock.svg'),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '250\'',
                                    style: TextStyle(color: Palette.primary),
                                  ),
                                  Text(
                                    '/300\'',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.0),
                              LinearPercentIndicator(
                                width: 120.0,
                                lineHeight: 6.0,
                                percent: 0.8,
                                progressColor: Palette.primary,
                                padding: EdgeInsets.all(3.0),
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
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Palette.bg_btn,
                              borderRadius: BorderRadius.circular(45.0),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/stricks.svg',
                              height: 18,
                            ),
                          ),
                          SizedBox(width: 6.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '2kcal',
                                    style: TextStyle(color: Palette.primary),
                                  ),
                                  Text(
                                    '/5kcal',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4.0),
                              LinearPercentIndicator(
                                width: 120.0,
                                lineHeight: 6.0,
                                percent: 0.8,
                                progressColor: Palette.primary,
                                padding: EdgeInsets.all(3.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
