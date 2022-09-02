import 'package:flutter/material.dart';
import 'package:wakke/views/challenge/components/principal_card.dart';
import 'package:wakke/views/home_feed/components/tool_bar.dart';

class ChallengePage extends StatelessWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.35,
            decoration: BoxDecoration(
              color: Colors.yellow,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/img_challenge_ex.png"),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: size.width * 0.7,
                    child: Text(
                      "AS 7 MARAVILHAS DO MUNDO ANTIGO: Voce as conhece ?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                PrincipalChallengeCard()
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
