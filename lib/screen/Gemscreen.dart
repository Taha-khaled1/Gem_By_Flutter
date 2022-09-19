import 'dart:math';
import 'package:flutter/material.dart';

class Gemscreen extends StatefulWidget {
  Gemscreen({Key? key}) : super(key: key);

  @override
  State<Gemscreen> createState() => _GemscreenState();
}

class _GemscreenState extends State<Gemscreen> {
  int index = 1;
  int inde = 4;
  String name = 'هيا بنا لنبداء اللعبه';
  winOrbeat() {
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

  Widget logicindexd() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.all(40),
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 50),
                )),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        winOrbeat();
                      },
                      child: Image.asset('images/image-$index.png'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        winOrbeat();
                      },
                      child: Image.asset('images/image-$inde.png'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(40),
              color: Colors.white,
              child: inde == index ? logicindexd() : Container(),
            )
          ],
        ),
      ),
    );
  }
}
