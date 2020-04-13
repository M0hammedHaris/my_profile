import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_profile/pages/contact_page.dart';
import 'package:my_profile/pages/home_page.dart';
import 'package:my_profile/pages/project_page.dart';
import 'package:my_profile/widgets/buttons/nav_buttons.dart';
import 'package:toast/toast.dart';

List<Widget> navButtonsDesktop(context) => [
      NavButton(
        text: "About",
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
      NavButton(
        text: "Project",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProjectPage()));
        },
      ),
      NavButton(
        text: "contact",
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ContactPage()));
        },
      ),
    ];
List<Widget> navButtonsMobile(context) => [
      NavButton(
        text: "About",
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
      NavButton(
        text: "Project",
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProjectPage()));
        },
      ),
      NavButton(
        text: "contact",
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ContactPage()));
        },
      ),
    ];
FlatButton github = FlatButton.icon(
    icon: SizedBox(
      width: 20,
      height: 20,
      child: Image.asset("assets/images/GitHub.png"),
    ),
    label: Text('Github'),
    onPressed: () =>
        html.window.open("https://github.com/M0hammedHaris", "MH"));
FlatButton linkedin = FlatButton.icon(
    icon: SizedBox(
      width: 20,
      height: 20,
      child: Image.asset("assets/images/LI-In.png"),
    ),
    label: Text('LinkedIn'),
    onPressed: () =>
        html.window.open("https://linkedin.com/in/mohammed-haris-k", "MH"));

FlatButton instagram = FlatButton.icon(
    icon: SizedBox(
      width: 20,
      height: 20,
      child: Image.asset("assets/images/Instagram.png"),
    ),
    label: Text('Instagram'),
    onPressed: () =>
        html.window.open("https://www.instagram.com/mohammed_haris___/", "MH"));
email(context) => FlatButton.icon(
    icon: SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        "assets/images/mail.png",
        fit: BoxFit.fill,
      ),
    ),
    label: Text('mohammedharis.k.01@gmail.com'),
    onPressed: () {
      Clipboard.setData(
          new ClipboardData(text: "mohammedharis.k.01@gmail.com"));
      Toast.show("Copied", context, gravity: Toast.CENTER);
    });
