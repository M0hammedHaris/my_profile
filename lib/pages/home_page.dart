import 'package:flutter/material.dart';
import 'package:my_profile/pages/Tablet/tablet.dart';
import 'package:my_profile/pages/desktop/desktop.dart';
import 'package:my_profile/pages/mobile/drawer.dart';
import 'package:my_profile/pages/mobile/mobile.dart';
import 'package:my_profile/widgets/navigation/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? MobileDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Padding(
              padding: sizingInformation.deviceScreenType != DeviceScreenType.Mobile ? EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0): EdgeInsets.symmetric(horizontal: 0.0,vertical: 0.0),
              child: NavigationBar(),
            ),
            Expanded(
                child: ScreenTypeLayout(
              mobile: Mobile(),
              desktop: Desktop(),
              tablet: Tablet(),
            )),
          ],
        ),
      ),
    );
  }
}
