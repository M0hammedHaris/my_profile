import 'package:flutter/material.dart';
import 'package:my_profile/pages/mobile/drawer.dart';
import 'package:my_profile/widgets/navigation/desktop_tablet.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileDrawer()));
            },
            icon: Icon(Icons.menu),
          ),
          NavBarTitle(),
        ],
      ),
    );
  }
}