import 'package:flutter/material.dart';
import 'package:wakke/shared/variables.dart';

class ChallengeRankingList extends StatelessWidget {
  const ChallengeRankingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.05),
      height: size.height * 0.32,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/icon_ranking.png",
                      height: size.height * 0.02,
                    ),
                    Text(
                      "Pessoas (39)",
                      style: TextStyle(
                          color: SharedPrefs.primaryPurple,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                      0,
                      size.height * 0.01,
                      20,
                      size.height * 0.02,
                    ),
                    child: ListView.builder(
                      physics: const ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        height: size.height * 0.08,
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: size.height * 0.08,
                                width: size.width * 0.15,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            "assets/images/default_image.png"))),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("${index + 1}º"),
                                  Text(
                                    "cfgtejota",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "8.357",
                                    style: TextStyle(fontSize: 11),
                                  )
                                ],
                              )
                            ]),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/icon_games.png",
                      height: size.height * 0.02,
                    ),
                    Text(
                      "Times (0)",
                      style: TextStyle(
                          color: SharedPrefs.primaryPurple,
                          fontSize: 17,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
