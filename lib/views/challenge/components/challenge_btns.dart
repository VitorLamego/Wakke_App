import 'package:flutter/material.dart';

class ChallengeButtons extends StatelessWidget {
  const ChallengeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
        Expanded(
          child: Container(
            height: size.height * 0.055,
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
                    height: size.height * 0.02,
                  ),
                  Text(
                    "Começar",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
