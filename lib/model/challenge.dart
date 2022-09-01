import 'package:wakke/model/user.dart';

class Challenge {
  final String id;
  final bool private;
  final int timesPlayed;
  final int qtdComments;
  final int scoreAvg;
  final double correctAvg;
  final double durationAvg;
  final double rating;
  final bool active;
  final bool finished;
  final String challengeId;
  final String title;
  final String description;
  final String wallpaper;
  final String video;
  final String nicNumber;
  final String dtCreation;
  final bool canDelete;
  final User author;

  Challenge(
      this.id,
      this.private,
      this.timesPlayed,
      this.qtdComments,
      this.scoreAvg,
      this.correctAvg,
      this.durationAvg,
      this.rating,
      this.active,
      this.finished,
      this.challengeId,
      this.title,
      this.description,
      this.wallpaper,
      this.video,
      this.nicNumber,
      this.dtCreation,
      this.canDelete,
      this.author);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'private': private ? 1 : 0,
      'timesPlayed': timesPlayed,
      'qtdComments': qtdComments,
      'scoreAvg': scoreAvg,
      'correctAvg': correctAvg,
      'durationAvg': durationAvg,
      'rating': rating,
      'active': active ? 1 : 0,
      'finished': finished ? 1 : 0,
      'challengeId': challengeId,
      'title': title,
      'description': description,
      'wallpaper': wallpaper,
      'video': video,
      'nicNumber': nicNumber,
      'dtCreation': dtCreation,
      'canDelete': canDelete ? 1 : 0,
      'userId': author.userId
    };
  }

  static Challenge fromMap(Map<String, dynamic> challenge, User user) {
    return Challenge(
        challenge["id"],
        challenge["private"] == 1 ? true : false,
        challenge["timesPlayed"],
        challenge["qtdComments"],
        challenge["scoreAvg"],
        challenge["correctAvg"].toDouble(),
        challenge["durationAvg"].toDouble(),
        challenge["rating"].toDouble(),
        challenge["active"] == 1 ? true : false,
        challenge["finished"] == 1 ? true : false,
        challenge["challengeId"],
        challenge["title"],
        challenge["description"],
        challenge["wallpaper"],
        challenge["video"],
        challenge["nicNumber"],
        challenge["dtCreation"],
        challenge["canDelete"] == 1 ? true : false,
        user);
  }
}
