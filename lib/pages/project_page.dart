import 'package:flutter/material.dart';
import 'package:my_profile/content/project_info.dart';
import 'package:my_profile/data/primary_data.dart';
import 'package:my_profile/widgets/buttons/project_widget.dart';
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
                backgroundColor: primaryColor,
              )
            : null,
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? Drawer(
                child: NavDrawer(sizingInformation: sizingInformation),
              )
            : null,
        body: sizingInformation.deviceScreenType != DeviceScreenType.Mobile
            ? AnimatedPadding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.045),
                duration: Duration(seconds: 2),
                child: Column(
                  children: <Widget>[
                    NavHeader(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Expanded(
                      child: new GridView.count(
                        padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
                        crossAxisCount: 3,
                        childAspectRatio: MediaQuery.of(context).size.width /
                            (MediaQuery.of(context).size.height / 1.3),
                        children: List.generate(
                          projects.length,
                          (index) => ProjectWidget(index: index),
                        ),
                      ),
                    )
                  ],
                ))
            : ListView.builder(
                itemCount: projects.length,
                itemBuilder: (context, index) => ProjectWidget(index: index),
              ),
      ),
    );
  }
}
