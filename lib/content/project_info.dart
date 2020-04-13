import 'package:flutter/material.dart';

class Project {
  String image;
  String name;
  String description;
  Project({
    @required this.image,
    @required this.name,
    @required this.description,
  });
}

final flutter = "assets/images/Icon-192.png";
final List<Project> projects = [
  Project(
    name: 'SI Calculator',
    image: flutter,
    description:
        'A Flutter based cross-platform application to find the SI for a given amount, rate of interest and period.',
  ),
  Project(
    name: 'Converter App',
    image: flutter,
    description:
        'Java based android application for unit conversions.',
  ),
  Project(
    name: 'Note Keeper',
    image: flutter,
    description:
        'A Flutter based cross-platform application to take notes and keep track of them.',
  ),
  Project(
    name: 'PR. Doctor',
    image: flutter,
    description:
        'A chatbot for Siddha treatment methods embeded with Dialog Flow.',
  ),
];
