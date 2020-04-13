import 'package:flutter/material.dart';
import 'package:my_profile/data/icon_data.dart';
import 'package:my_profile/data/primary_data.dart';

class NavHeader extends StatefulWidget {
  final sizingInformation;
  const NavHeader({Key key, this.sizingInformation}) : super(key: key);

  @override
  _NavHeaderState createState() => _NavHeaderState();
}

class _NavHeaderState extends State<NavHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        NavBarTitle(),
        Row(children: navButtons(context, widget.sizingInformation))
      ],
    );
  }
}

class NavBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "Dev",
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "MH",
          textScaleFactor: 2,
          style: TextStyle(fontWeight: FontWeight.bold, color: primaryColor),
        ),
        SizedBox(
          width: 5,
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: introColor,
          ),
        ),
      ],
    );
  }
}
