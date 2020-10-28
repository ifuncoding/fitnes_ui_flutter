import 'package:fitness_app/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TabSelection extends StatelessWidget {
  const TabSelection({
    Key key,
    @required this.size,
    @required List<String> listIcon,
    @required this.indexTab,
    @required this.setIndex,
  })  : _listIcon = listIcon,
        super(key: key);

  final Size size;
  final List<String> _listIcon;
  final int indexTab;

  final void Function(int) setIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size.height * 0.18,
        padding: EdgeInsets.only(left: 12.0, right: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _listIcon
              .asMap()
              .map((i, e) => MapEntry(
                  i,
                  GestureDetector(
                    onTap: () {
                      setIndex(i);
                    },
                    child: SelectTabRowItem(
                      size: size,
                      iconLink: e,
                      isActive: i == indexTab,
                    ),
                  )))
              .values
              .toList(),
          // [
          //   SelectTabRowItem(size: size)
          // ],
        ),
      ),
    );
  }
}

class SelectTabRowItem extends StatelessWidget {
  const SelectTabRowItem({
    Key key,
    @required this.size,
    @required this.iconLink,
    @required this.isActive,
  }) : super(key: key);

  final Size size;
  final String iconLink;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width / 13 * 2,
      width: size.width / 13 * 2,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Palette.primary,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
        boxShadow: isActive
            ? [
                BoxShadow(
                  // offset: Offset(0, 5),
                  blurRadius: 20,
                  color: Palette.primary.withOpacity(0.5),
                ),
              ]
            : [],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            iconLink,
            color: isActive ? Palette.primary : Colors.white,
          ),
        ),
      ),
    );
  }
}
