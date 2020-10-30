import 'package:fitness_app/config/palette.dart';
import 'package:fitness_app/screens/stay_fit.dart/components/top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FitnessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        child: Stack(
          children: [
            TopContainer(
              height: size.height,
              width: size.width,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36),
                    topRight: Radius.circular(36),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 35.0, 30.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        LabelContainer(),
                        SizedBox(height: 30.0),
                        InputBMIForm(),
                        SizedBox(height: 30.0),
                        SelectForm(),
                        SizedBox(height: 30.0),
                        SelectDayBottom(),
                        SizedBox(height: 12.0),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SelectDayBottom extends StatefulWidget {
  const SelectDayBottom({
    Key key,
  }) : super(key: key);

  @override
  _SelectDayBottomState createState() => _SelectDayBottomState();
}

class _SelectDayBottomState extends State<SelectDayBottom> {
  static List<String> days = [
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
  ];

  int indexNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Days you\'ll be excersising',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 12.0),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: days
                .asMap()
                .map((key, value) => MapEntry(
                    key,
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          indexNumber = key;
                        });
                      },
                      child: SelectDayItem(
                        text: value,
                        isActive: indexNumber == key,
                      ),
                    )))
                .values
                .toList()
            // [
            //   SelectDayItem(
            //     text: 'mon',
            //     isActive: false,
            //   ),
            // ],
            )
      ],
    );
  }
}

class SelectDayItem extends StatelessWidget {
  const SelectDayItem({
    Key key,
    @required this.text,
    @required this.isActive,
  }) : super(key: key);

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: isActive ? Palette.primary : Color(0xFFcfebee),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class InputBMIForm extends StatelessWidget {
  const InputBMIForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.bg_form,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your BMI',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12.0),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: "BMI Index",
                  hintStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // surffix isn't working properly  with SVG
                  // thats why we use row
                  // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            Row(
              children: [
                HintText(value: 'Height'),
                SizedBox(width: 8.0),
                HintText(value: 'Weight'),
                SizedBox(width: 8.0),
                HintText(value: 'Age'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LabelContainer extends StatelessWidget {
  const LabelContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Your Suggested Workout',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        SvgPicture.asset(
          "assets/icons/more.svg",
          height: 18,
        ),
      ],
    );
  }
}

class SelectForm extends StatefulWidget {
  const SelectForm({
    Key key,
  }) : super(key: key);

  @override
  _SelectFormState createState() => _SelectFormState();
}

class _SelectFormState extends State<SelectForm> {
  String value = 'Today';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.bg_form,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your daily activity',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24.0),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                value: value,
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 24,
                iconDisabledColor: Palette.primary,
                iconEnabledColor: Palette.primary,
                elevation: 16,
                style: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                ),
                underline: Container(),
                onChanged: (String newValue) {
                  setState(() {
                    value = newValue;
                  });
                },
                items: <String>[
                  'Today',
                  'ifun',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HintText extends StatelessWidget {
  const HintText({
    Key key,
    @required this.value,
  }) : super(key: key);

  final String value;

  static TextStyle textStyHint =
      TextStyle(color: Palette.primary, fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        vertical: 6.0,
      ),
      decoration: BoxDecoration(
        color: Palette.second,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        value,
        style: textStyHint,
      ),
    );
  }
}
