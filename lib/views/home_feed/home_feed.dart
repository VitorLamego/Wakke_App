import 'package:flutter/material.dart';
import 'package:wakke/controller/home_feed_controller.dart';
import 'package:wakke/shared/variables.dart';
import 'package:wakke/views/home_feed/components/app_bar.dart';
import 'package:wakke/views/home_feed/components/tool_bar.dart';
import 'package:wakke/views/navigation_drawer/navigation.dart';

import 'components/top10_section/top10_list.dart';

class HomeFeed extends StatefulWidget {
  const HomeFeed({Key? key}) : super(key: key);

  @override
  State<HomeFeed> createState() => _HomeFeedState();
}

class _HomeFeedState extends State<HomeFeed> {
  HomeFeedController controller = HomeFeedController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.06),
        child: CustomAppBar(context: context),
      ),
      drawer: const NavigationDrawer(),
      body: Stack(
        children: [
          FutureBuilder(
            future: controller.buildChallengesListView(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 25),
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
                                style: TextStyle(
                                    color: SharedPrefs.primaryPurple,
                                    fontSize: size.height * 0.02),
                              ),
                            )
                          ],
                        ),
                        Top10ListView(top10: controller.top10),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/icon_chat.png",
                              height: size.height * 0.025,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5, top: 3),
                              child: Text(
                                "Est?? acontecendo...",
                                style: TextStyle(
                                  color: SharedPrefs.primaryPurple,
                                  fontSize: size.height * 0.02,
                                ),
                              ),
                            )
                          ],
                        ),
                        ...(snapshot.data as List<Widget>),
                        SizedBox(height: size.height * 0.11)
                      ],
                    ),
                  ),
                );
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomToolBar(),
          )
        ],
      ),
    );
  }
}
