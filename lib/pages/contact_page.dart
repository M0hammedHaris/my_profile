import 'package:flutter/material.dart';
import 'package:my_profile/data/icon_data.dart';
import 'package:my_profile/widgets/navigation/nav_drawer.dart';
import 'package:my_profile/widgets/navigation/nav_hrader.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? AppBar(
                elevation: 0,
                title: Text(
                  "Contact",
                  textScaleFactor: 1.25,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                backgroundColor: Colors.amber,
              )
            : null,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? Drawer(
                child: NavDrawer(sizingInformation: sizingInformation),
              )
            : null,
        body: Center(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.045),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                  ? NavHeader()
                  : Container(
                      height: 0.0,
                      width: 0.0,
                    ),
              sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                  ? SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    )
                  : Container(
                      height: 0.0,
                      width: 0.0,
                    ),
              CircleAvatar(
                radius: 100,
                backgroundImage: Image.asset("assets/images/haris.jpg").image,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  github,
                  linkedin,
                  instagram
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  email
                ],
              )
            ],
          ),
        ),
      ),
      ),
    );
  }
}
