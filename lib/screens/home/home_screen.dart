import 'package:fitness_app/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: HomeBody(),
    );
  }
}

AppBar buildAppbar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/Menu.svg",
        height: 18,
      ),
      onPressed: () {},
    ),
  );
}
