import 'package:flutter/material.dart';
import 'package:wakke/views/home_feed/home_feed.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Wakke-Fun',
      debugShowCheckedModeBanner: false,
      home: HomeFeed(),
    );
  }
}
