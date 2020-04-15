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
final apparelo = "assets/images/APPARELO.png";
final notekeeper = "assets/images/notes.png";
final si = "assets/images/calculator.png";
final converter = "assets/images/convertericon.png";
final prDr = "assets/images/medicine.png";
final List<Project> projects = [
  Project(
    name: 'SI Calculator',
    image: si,
    description:
        'A Flutter based cross-platform application to find the SI for a given amount, rate of interest and period.',
  ),
  Project(
    name: 'Converter App',
    image: converter,
    description: 'Java based android application for unit conversions.',
  ),
  Project(
    name: 'Note Keeper',
    image: notekeeper,
    description:
        'A Flutter based cross-platform application to take notes and keep track of them.',
  ),
  Project(
    name: 'PR. Doctor',
    image: prDr,
    description:
        'A chatbot for Siddha treatment methods embeded with Dialog Flow.',
  ),
  Project(
    name: 'Apparelo',
    image: apparelo,
    description:
        'Frappe application to manage the manufacturing workflows in the garment industry.',
  ),
];
