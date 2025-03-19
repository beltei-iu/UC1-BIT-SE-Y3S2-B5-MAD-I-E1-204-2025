import 'package:flutter/material.dart';

class BookDetailScreen extends StatefulWidget {
  BookDetailScreen({super.key});

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)!.settings.arguments as String;

    final appBar = AppBar(
      title: Text("${title}"),
      elevation: 3,
    );

    final screen = Scaffold(
      appBar: appBar,
      body: Center(
        child: Text("${title}"),
      ),
    );

    return screen;
  }
}
