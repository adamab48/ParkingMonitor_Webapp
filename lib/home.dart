import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dbrefer = FirebaseDatabase.instance;
  String stateText ="";
  void _handler(String i) {
    setState(() {
      stateText = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ref = dbrefer.ref("LED_STATUS");
    ref.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value.toString();
      _handler(data);
    });

    return Scaffold(
      appBar: AppBar(title: Text("ESP8266 based car detector")),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [Text("Number of Cars Present in the Parking"),Text(stateText)])),
    );
  }
}
