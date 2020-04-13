import 'package:flutter/material.dart';
import 'package:my_profile/data/primary_data.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = primaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(text),
      borderSide: BorderSide(
        color: color,
      ),
      onPressed: onPressed,
      highlightedBorderColor: color,
    );
  }
}
