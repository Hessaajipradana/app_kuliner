import 'package:aplikasiresto/makanan.dart';
import 'package:aplikasiresto/styles.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  final Makanan makanan;

  DetailPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBgColor,
      body: SingleChildScrollView(
        child: Column(children: [])),
    );
  }
}///////////