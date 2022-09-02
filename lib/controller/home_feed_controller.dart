import 'package:flutter/material.dart';
import 'package:wakke/model/challenge.dart';
import 'package:wakke/model/user.dart';
import 'package:wakke/services/api_communication.dart';
import 'package:wakke/views/home_feed/components/challenge_card.dart';

class HomeFeedController {
  AppService service = AppService();
  List<Challenge> top10 = [];

  Future<List<Widget>> buildChallengesListView() async {
    List<Widget> columnChallenges = [];
    List<Map<String, dynamic>> challenges = await service.getAllChallenges();

    for (int index = 0; index < challenges.length; index++) {
      var userData = await service.getSpecificUser(challenges[index]["userId"]);
      User user = User.userFromMap(userData);
      Challenge challenge = Challenge.fromMap(challenges[index], user);

      if (top10.length == 9) {
        top10.add(challenge);
        top10.sort(((a, b) => a.rating.compareTo(b.rating)));
      } else if (top10.length < 10) {
        top10.add(challenge);
      } else {
        if (challenge.rating > top10[0].rating) {
          top10.removeAt(0);
          top10.insert(0, challenge);
        }
      }
      columnChallenges.add(ChallengeCard(challenge: challenge));
    }

    return columnChallenges;
  }
}
