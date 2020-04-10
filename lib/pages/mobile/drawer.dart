import 'package:flutter/material.dart';

class MobileDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 20,
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.cyan, Colors.cyan[100]]),
              ),
              child: null),
          ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text('About'),
              onTap: () {}),
          Divider(),
          ListTile(
              leading: Icon(Icons.work, color: Colors.blue),
              title: Text('Project'),
              onTap: () {}),
        ],
      ),
    );
  }
}