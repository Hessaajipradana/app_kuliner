import 'package:aplikasiresto/home_page.dart';
import 'package:aplikasiresto/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: pageBgColor,
        appBar: AppBar(
          backgroundColor: headBgColor,
          title: Text("Kuliner Nusantara", 
          style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)
            ),
            centerTitle: true),  
        body: Homepage(),
      ),
    );
  }
}

