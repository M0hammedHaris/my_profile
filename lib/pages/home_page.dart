import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/content/profile_info.dart';
import 'package:my_profile/data/icon_data.dart';
import 'package:my_profile/data/primary_data.dart';
import 'package:my_profile/widgets/navigation/nav_drawer.dart';
import 'package:my_profile/widgets/navigation/nav_hrader.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? AppBar(
                elevation: 0,
                title: Row(
                  children: <Widget>[
                    Text(
                      "Dev",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: titleColor),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "MH",
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                backgroundColor: primaryColor,
              )
            : null,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? Drawer(
                child: NavDrawer(
                  sizingInformation: sizingInformation,
                ),
              )
            : null,
        body: SingleChildScrollView(
            child: AnimatedPadding(
          padding: EdgeInsets.all(height * 0.045),
          duration: Duration(seconds: 1),
          child: Column(
            children: <Widget>[
              sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                  ? NavHeader()
                  : Container(
                      height: 0.0,
                      width: 0.0,
                    ),
              sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                  ? SizedBox(
                      height: height * 0.1,
                    )
                  : Container(
                      height: 0.0,
                      width: 0.0,
                    ),
              ProfileInfo(),
              sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                  ? SizedBox(
                      height: height * 0.2,
                    )
                  : SizedBox(),
              sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                  ? copyRight()
                  : SizedBox(),
            ],
          ),
        )),
      ),
    );
  }
}
