import 'package:flutter/material.dart';
import 'package:wakke/views/home_feed/components/app_bar.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({Key? key}) : super(key: key);

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0XFFF5F5F5),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.07),
          child: const CustomAppBar(),
        ));
  }
}
