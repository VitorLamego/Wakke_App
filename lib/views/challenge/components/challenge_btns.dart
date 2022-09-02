import 'package:flutter/material.dart';

class ChallengeButtons extends StatelessWidget {
  const ChallengeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/btn_comments.png",
          height: size.height * 0.055,
        ),
        SizedBox(width: 10),
        Image.asset(
          "assets/images/btn_fav.png",
          height: size.height * 0.055,
        ),
        SizedBox(width: 10),
        Container(
          height: size.height * 0.055,
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/btn_comecar.png",
                ),
                fit: BoxFit.fill),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icon_start_challenge.png",
                  height: size.height * 0.022,
                ),
                SizedBox(width: size.width * 0.01),
                Text(
                  "Começar",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: size.height * 0.02),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
