import 'package:flutter/material.dart';
import 'package:wakke/views/home_feed/components/top10_section/top10_card.dart';

class Top10ListView extends StatelessWidget {
  const Top10ListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      child: ListView.builder(
          physics: const ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) =>
              Top10Card(index: index)),
    );
  }
}
