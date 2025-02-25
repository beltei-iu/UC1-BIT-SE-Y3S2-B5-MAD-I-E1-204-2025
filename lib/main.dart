import 'package:flutter/material.dart';

void main() {
  // 4. Control

  final appSlogan = Text(
    "The Future of Global Leader.",
    style: TextStyle(fontSize: 20),
  );

  final logo = Expanded(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Image.asset("assets/images/beltei.png"), appSlogan],
  ));

  final getStart = Padding(
    padding: EdgeInsets.only(bottom: 20),
    child: Container(
      width: 500,
      child: ElevatedButton(
          onPressed: () {
            print("Click");
          },
          child: Text("Get Start")),
    ),
  );

  // 3. Layout/Block
  final centerLayout = Column(
    children: [logo, getStart],
  );

  // 2. Create Screen
  final screen = Scaffold(
    body: centerLayout,
  );

  // 1. Create App
  final app = MaterialApp(
    home: screen,
  );

  // Run App
  runApp(app);
}
