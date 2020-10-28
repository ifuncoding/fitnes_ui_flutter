import 'package:fitness_app/config/global_styles.dart';
import 'package:fitness_app/config/palette.dart';
import 'package:flutter/material.dart';

class HeaderHomeContainer extends StatelessWidget {
  const HeaderHomeContainer({
    Key key,
    @required this.size,
    @required this.h1,
  }) : super(key: key);

  final Size size;
  final TextStyle h1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.38,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Palette.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36.0),
          bottomRight: Radius.circular(36.0),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset(
                          'assets/images/user_avatar.png',
                          height: 55.0,
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        right: 0.0,
                        child: Container(
                          height: 12.0,
                          width: 12.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0)),
                            boxShadow: [
                              BoxShadow(
                                // offset: Offset(0, 5),
                                blurRadius: 2,
                                color: Colors.black.withOpacity(0.80),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Container(
                              height: 8.0,
                              width: 8.0,
                              decoration: BoxDecoration(
                                color: Palette.primary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45.0)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    'Hi, Williana',
                    style: h1,
                  ),
                  SizedBox(height: 12.0),
                  Text(
                    '26 Years, London',
                    style: globalStyle.text,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BuildUnitItem(
                  h1: h1,
                  name: 'Weight',
                  value: '74',
                  unit: 'kg',
                ),
                BuildUnitItem(
                  h1: h1,
                  name: 'Height',
                  value: '5.11',
                  unit: 'ft',
                ),
                BuildUnitItem(
                  h1: h1,
                  name: 'Goal',
                  value: '68',
                  unit: 'kg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BuildUnitItem extends StatelessWidget {
  const BuildUnitItem({
    Key key,
    @required this.h1,
    @required this.name,
    @required this.value,
    @required this.unit,
  }) : super(key: key);

  final TextStyle h1;
  final String name;
  final String value;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: globalStyle.text,
        ),
        SizedBox(height: 5.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              value,
              style: h1,
            ),
            SizedBox(width: 5.0),
            Text(
              unit,
              style: globalStyle.text,
            ),
          ],
        )
      ],
    );
  }
}
