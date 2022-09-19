import 'dart:math';

import 'package:flutter/material.dart';

int index = 1;
int inde = 4;
String name = 'هيا بنا لنبداء اللعبه';
winOrbeat(setState) {
  setState(() {
    index = Random().nextInt(8) + 1;
    inde = Random().nextInt(8) + 1;
    if (index == inde) {
      name = 'الف مبروك لقد ربحت';
    } else if (inde != index) {
      name = ' للاسف حاول مره اخري ';
    }
  });
}

Widget logicindexd(setState) {
  return Container(
    child: ElevatedButton(
      onPressed: () {
        setState(() {
          index = 1;
          inde = 4;
          name = 'هيا بنا لنبداء اللعبه';
        });
      },
      child: Text('اعادة اللعبه'),
    ),
  );
}
