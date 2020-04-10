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
                title: Text("Dev MH"),
                backgroundColor: Colors.white,
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
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
          duration: Duration(seconds: 1),
          child: Column(
            children: <Widget>[
              if (sizingInformation.deviceScreenType == DeviceScreenType.Mobile)
                NavHeader(navButtons: navButtons()),
              if (sizingInformation.deviceScreenType == DeviceScreenType.Mobile)
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ProfileInfo(),
            ],
          ),
        )),
      ),
    );
  }
}
