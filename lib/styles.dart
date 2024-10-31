import 'package:flutter/material.dart';

const pageBgColor = Color(0xFFFFF3E0);
const headBgColor = Color.fromARGB(255, 99, 62, 3);
const iconColor = Color.fromARGB(255, 214, 70, 2);
const textColorWhite = Colors.white;

const headerH1 = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

// Background gradient untuk dark mode dengan lingkaran estetik
final pageBgColorDark = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF1E1E1E),
      Color(0xFF121212),
    ],
  ),
);

final List<Widget> backgroundCircles = [
  Positioned(
    top: -50,
    left: -50,
    child: CircleAvatar(
      radius: 100,
      backgroundColor: Colors.blue.withOpacity(0.3),
    ),
  ),
  Positioned(
    bottom: -60,
    right: -60,
    child: CircleAvatar(
      radius: 130,
      backgroundColor: Colors.purple.withOpacity(0.2),
    ),
  ),
  Positioned(
    top: 200,
    right: -30,
    child: CircleAvatar(
      radius: 80,
      backgroundColor: Colors.red.withOpacity(0.3),
    ),
  ),
];
