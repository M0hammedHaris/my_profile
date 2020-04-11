import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/content/profile_info.dart';
import 'package:my_profile/widgets/buttons/nav_buttons.dart';
import 'package:my_profile/widgets/navigation/nav_hrader.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  List<Widget> navButtons() => [
        NavButton(
          text: "About",
          onPressed: () {},
        ),
        NavButton(
          text: "Project",
          onPressed: () {},
        ),
        NavButton(
          text: "contact",
          onPressed: () {},
        ),
      ];
  @override
  Widget build(BuildContext context) {
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
                        fontWeight: FontWeight.bold,
                        color: Colors.black54
                      ),
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
                backgroundColor: Colors.amber,
              )
            : null,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? Drawer(
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: navButtons(),
                ),
              )
            : null,
        body: SingleChildScrollView(
            child: AnimatedPadding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.045),
          duration: Duration(seconds: 1),
          child: Column(
            children: <Widget>[
              sizingInformation.deviceScreenType != DeviceScreenType.Mobile
                  ? NavHeader(navButtons: navButtons())
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
              ProfileInfo(),
            ],
          ),
        )),
      ),
    );
  }
}
