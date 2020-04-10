import 'package:flutter/material.dart';
import 'package:my_profile/widgets/navigation/desktop_tablet.dart';
import 'package:my_profile/widgets/navigation/mobile_nav.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: NavigationBarTabletDesltop(),
      mobile: NavigationBarMobile(),
    );
  }
}