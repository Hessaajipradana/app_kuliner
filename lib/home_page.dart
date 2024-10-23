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
      child: Column(children: [
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(Icons.list_alt, size: 30,), Text(
            'List Kuliner', 
            style: headerH1)
            ],
          ),
          SizedBox(height: 10),
          Expanded(child: ListView.builder(
           itemCount: listMenu.length ,itemBuilder: (context, index){
            return ListItem(menu: listMenu[index]);
          }))
      ]),
    );
  }
}

