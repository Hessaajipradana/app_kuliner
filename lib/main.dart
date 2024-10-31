import 'dart:ui';
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
        // Gunakan Stack untuk lingkaran dekoratif dan blur
        body: Stack(
          children: [
            Container(
              decoration: pageBgColorDark,
            ),
            ...backgroundCircles, // Tambahkan lingkaran dekoratif
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),
            Column(
              children: [
                // Custom Dark Glassmorphism AppBar
                Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3), // Warna gelap untuk dark glassmorphism
                    borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        blurRadius: 15,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.restaurant_menu,
                              color: Colors.tealAccent.withOpacity(0.8),
                              size: 28,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Kuliner Nusantara",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.85),
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.5),
                                    offset: const Offset(1, 1),
                                    blurRadius: 2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Expanded(child: Homepage()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
