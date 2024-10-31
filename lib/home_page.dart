import 'package:aplikasiresto/list_item.dart';
import 'package:aplikasiresto/makanan.dart';
import 'package:aplikasiresto/styles.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Makanan> listMenu = Makanan.dumpyData;

    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header dengan Glassmorphism Style
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white
                    .withOpacity(0.1), // Transparansi untuk efek glassmorphism
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.list_alt,
                    size: 30,
                    color: Colors.orangeAccent.withOpacity(
                        0.8), // Warna yang selaras dengan background
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'List Kuliner',
                    style: headerH1.copyWith(
                      color: Colors.white.withOpacity(
                          0.9), // Warna putih transparan agar lebih lembut
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
            const SizedBox(height: 20),
            // Mengatur ListView agar berada di tengah tanpa Expanded
            SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.95, // Membatasi lebar list
              child: ListView.builder(
                shrinkWrap: true, // Menghindari penggunaan seluruh tinggi
                physics:
                    const NeverScrollableScrollPhysics(), // Menonaktifkan scroll agar ListView bisa mengikuti aliran layout
                itemCount: listMenu.length,
                itemBuilder: (context, index) {
                  return ListItem(menu: listMenu[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
