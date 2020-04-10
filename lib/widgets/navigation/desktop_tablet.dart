import 'package:flutter/material.dart';

class NavigationBarTabletDesltop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              NavBarTitle(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                 Text("About"),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text("Project"),
                  SizedBox(
                    width: 30.0,
                  ),
                ],
              )
            ],
          ),
    );
  }

}

class NavBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          height: 80.0,
          child: Text(
            "Dev MH.",
            style: TextStyle(fontSize: 40.0),
          ),
      ),
    );
  }
}