import 'package:flutter/material.dart';
import 'package:wakke/components/more_vert_icon.dart';
import 'package:wakke/model/challenge.dart';
import 'package:wakke/shared/variables.dart';
import 'package:wakke/views/challenge/components/author_challenge.dart';
import 'package:wakke/views/challenge/components/challenge_btns.dart';
import 'package:wakke/views/challenge/components/challenge_ranking.dart';

class PrincipalChallengeCard extends StatelessWidget {
  const PrincipalChallengeCard({Key? key, required this.challenge})
      : super(key: key);

  final Challenge challenge;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(15, size.height * 0.13, 15, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              AuthorChallenge(challenge: challenge),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/icon_players_violet.png",
                        height: size.height * 0.02,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Desafio",
                        style: TextStyle(
                            color: SharedPrefs.primaryPurple,
                            fontSize: 17,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  CustomMoreVertIcon()
                ],
              ),
              Text(
                challenge.description,
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              ChallengeRankingList(),
              ChallengeButtons()
            ],
          ),
        ),
      ),
    );
  }
}
