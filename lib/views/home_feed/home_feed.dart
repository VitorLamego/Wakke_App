import 'package:flutter/material.dart';
import 'package:wakke/shared/variables.dart';
import 'package:wakke/views/home_feed/components/app_bar.dart';
import 'package:wakke/views/home_feed/components/challenge_card.dart';
import 'package:wakke/views/home_feed/components/tool_bar.dart';

import 'components/top10_section/top10_list.dart';

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
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/icon_flame.png",
                        height: size.height * 0.025,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 3),
                        child: Text(
                          "Top 10",
                          style: TextStyle(color: SharedPrefs.primaryPurple),
                        ),
                      )
                    ],
                  ),
                  const Top10ListView(),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/icon_chat.png",
                        height: size.height * 0.025,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, top: 3),
                        child: Text(
                          "Está acontecendo...",
                          style: TextStyle(color: Color(0XFF6236FF)),
                        ),
                      )
                    ],
                  ),
                  const ChallengeCard(),
                  const ChallengeCard(),
                  SizedBox(height: size.height * 0.11)
                ],
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: CustomToolBar(),
          )
        ],
      ),
    );
  }
}
