import 'package:flutter/material.dart';
import 'package:wakke/model/challenge.dart';
import 'package:wakke/model/user.dart';
import 'package:wakke/services/api_communication.dart';
import 'package:wakke/views/home_feed/components/challenge_card.dart';

class HomeFeedController {
  AppService service = AppService();

  Future<List<Widget>> buildChallengesListView() async {
    List<Widget> columnChallenges = [];
    List<Map<String, dynamic>> challenges = await service.getAllChallenges();

    for (var element in challenges) {
      var userData = await service.getSpecificUser(element["userId"]);
      User user = User.userFromMap(userData);
      Challenge challenge = Challenge.fromMap(element, user);

      columnChallenges.add(ChallengeCard(challenge: challenge));
    }

    return columnChallenges;
  }
}
