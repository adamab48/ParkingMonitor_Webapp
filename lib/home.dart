// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> data = ["", ""];
  final dbrefer = FirebaseDatabase.instance;
  void _handler(String i, int x) {
    setState(() {
      if (x == 1) {
        if (i == "0") {
          data[0] = "FREE";
        } else {
          data[0] = "OCCUPIED";
        }
      } else if (x == 2) {
        
        if (i == "0") {
          data[1] = "FREE";
        } else {
          data[1] = "OCCUPIED";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ref1 = dbrefer.ref("cap1");
    ref1.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value.toString();
      _handler(data, 1);
    });
    final ref2 = dbrefer.ref("cap2");
    ref2.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value.toString();
      _handler(data, 2);
    });

    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Parking Monitor",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        Divider(),
        Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Parking Spot 1 : ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  data[0],
                  style: TextStyle(fontSize: 25),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Parking Spot 2 : ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  data[1],
                  style: TextStyle(fontSize: 25),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        )
      ])),
    );
  }
}
