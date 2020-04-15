import 'package:flutter/material.dart';
import 'package:my_profile/content/project_info.dart';
import 'package:my_profile/data/primary_data.dart';

class ProjectWidget extends StatelessWidget {
  final index;

  const ProjectWidget({Key key, @required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
        margin: const EdgeInsets.all(8.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                              flex: 40,
                              child: Image.asset(
                                projects[index].image,
                                width: width * .25,
                                height: width * .25,
                              )),
                          Expanded(
                            flex: 3,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 60,
                            child: Container(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(projects[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Text(
                                    projects[index].description,
                                    textScaleFactor: 1.2,
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ])))));
  }
}
