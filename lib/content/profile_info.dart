import 'package:flutter/material.dart';
import 'package:my_profile/data/primary_data.dart';
import 'package:my_profile/pages/contact_page.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:html' as html;

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: MediaQuery.of(context).size.width * 0.25,
        width: MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/images/haris.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  profileData(sizingInformation, context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Hi there! My name is",
            textScaleFactor:
                sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                    ? 2.0
                    : 1.75,
            style: TextStyle(color: introColor, fontFamily: "Ubuntu"),
          ),
          Text(
            "Mohammed\nHaris",
            textScaleFactor:
                sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                    ? 4.5
                    : 3.0,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Text(
            "I am a B.E. graduate specialized in Computer Science.\n"
            "I have developed some PoC mobile applications using Android and Flutter SDK.\n"
            "I also worked on opensource platforms like Frappe, ERPNext.",
            softWrap: true,
            textScaleFactor:
                sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                    ? 1.25
                    : 1.05,
            style: TextStyle(color: titleColor, fontFamily: "Ubuntu"),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                shape: StadiumBorder(),
                child: Text("Resume"),
                color: primaryColor,
                onPressed: () {
                  html.window.open(
                      "https://drive.google.com/file/d/1iAcq0et3Yd2ilU36BmkHlqEdEcUi0OJr/view?usp=sharing",
                      "MH");
                },
                padding: EdgeInsets.all(10),
              ),
              SizedBox(
                width: 20,
              ),
              OutlineButton(
                borderSide: BorderSide(color: primaryColor),
                shape: StadiumBorder(),
                child: Text("Say Hi!"),
                color: primaryColor,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ContactPage()));
                },
                padding: EdgeInsets.all(10),
              )
            ],
          )
        ],
      );
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType != DeviceScreenType.Mobile &&
          sizingInformation.deviceScreenType != DeviceScreenType.Tablet) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            profileImage(context),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.075,
            ),
            profileData(sizingInformation, context)
          ],
        );
      } else {
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            profileImage(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.075,
            ),
            profileData(sizingInformation, context)
          ],
        );
      }
    });
  }
}
