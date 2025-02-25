import 'package:flutter/material.dart';

void main() {
  // 4. Control
  final msg = Text(
    "MAD-204",
    style: TextStyle(fontSize: 20),
  );

  // 3. Layout/Block
  final centerLayout = Center(
    child: msg,
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
