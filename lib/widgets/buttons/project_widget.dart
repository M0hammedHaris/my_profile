import 'package:flutter/material.dart';
import 'package:my_profile/content/project_info.dart';
import 'package:my_profile/data/primary_data.dart';

class ProjectWidget extends StatelessWidget {
  final index;

  const ProjectWidget({Key key, @required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 90.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(projects[index].image),
              ),
              title: Text(
                projects[index].name,
                style:
                    TextStyle(color: titleColor, fontWeight: FontWeight.w700),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  projects[index].description,
                  style: TextStyle(color: Colors.black45),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
