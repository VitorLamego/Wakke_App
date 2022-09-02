import 'package:flutter/material.dart';
import 'package:wakke/model/challenge.dart';
import 'package:wakke/views/challenge/components/principal_card.dart';
import 'package:wakke/views/home_feed/components/tool_bar.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key, required this.challenge}) : super(key: key);

  final Challenge challenge;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.35,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(challenge.wallpaper),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset(
                        "assets/images/icon_header_back_branco.png",
                        height: size.height * 0.08,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Container(
                      width: size.width * 0.7,
                      child: Text(
                        challenge.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.025),
                      ),
                    ),
                    SizedBox(width: size.height * 0.05)
                  ],
                ),
                PrincipalChallengeCard(challenge: challenge)
              ],
            ),
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
