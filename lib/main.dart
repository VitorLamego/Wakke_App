import 'package:flutter/material.dart';
import 'package:wakke/local_storage/database.dart';
import 'package:wakke/views/home_feed/home_feed.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDatabase.instance.populateDB();
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
