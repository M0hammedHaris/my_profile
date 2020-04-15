import 'package:flutter/material.dart';
import 'package:my_profile/data/icon_data.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavDrawer extends StatelessWidget {
  final sizingInformation;
  const NavDrawer({Key key, @required this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.all(20), children: navButtonsMobile(context));
  }
}
