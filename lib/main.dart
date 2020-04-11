import 'package:flutter/material.dart';
import 'package:my_profile/pages/home_page.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mohammed Haris Porfolio",
      home: HomePage(),
    );
  }
}
