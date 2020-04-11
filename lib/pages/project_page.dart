import 'package:flutter/material.dart';
import 'package:my_profile/widgets/navigation/nav_drawer.dart';
import 'package:my_profile/widgets/navigation/nav_hrader.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        appBar: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? AppBar(
                elevation: 0,
                title: Text(
                  "Project",
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
        body: SingleChildScrollView(
            child: AnimatedPadding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.045),
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
                      height: MediaQuery.of(context).size.height * 0.1,
                    )
                  : Container(
                      height: 0.0,
                      width: 0.0,
                    ),
              Center(child: Text('Yet to update ...',textScaleFactor: 2.5,))
            ],
          ),
        )),
      ),
    );
  }
}
