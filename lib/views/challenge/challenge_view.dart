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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset(
                        "assets/images/icon_header_back_branco.png",
                        height: size.height * 0.05,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Container(
                      width: size.width * 0.7,
                      child: Text(
                        "AS 7 MARAVILHAS DO MUNDO ANTIGO: Voce as conhece ?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: size.height * 0.05)
                  ],
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
