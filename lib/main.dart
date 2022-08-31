import 'package:flutter/material.dart';
import 'package:wakke/views/home_feed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wakke-Fun',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeFeed(),
    );
  }
}
