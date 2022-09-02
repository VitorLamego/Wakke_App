import 'package:flutter/material.dart';
import 'package:wakke/components/more_vert_icon.dart';
import 'package:wakke/model/challenge.dart';
import 'package:wakke/views/challenge/challenge_view.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({Key? key, required this.challenge}) : super(key: key);

  final Challenge challenge;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: size.height * 0.05),
      margin: EdgeInsets.only(top: size.height * 0.03),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: MaterialButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => ChallengePage(challenge: challenge)),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: size.height * 0.06,
                      width: size.width * 0.09,
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width * 0.02,
                          vertical: size.height * 0.01),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: challenge.author.userImage != null
                              ? NetworkImage(challenge.author.userImage!)
                              : const AssetImage(
                                      "assets/images/default_image.png")
                                  as ImageProvider,
                        ),
                      ),
                    ),
                    Text(
                      challenge.author.userName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * 0.02),
                    ),
                  ],
                ),
                CustomMoreVertIcon()
              ],
            ),
            Container(
              height: size.height * 0.18,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(challenge.wallpaper),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/icon_account.png",
                      height: size.height * 0.025,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      challenge.timesPlayed.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.015,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.chat_outlined,
                      size: size.height * 0.025,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    const SizedBox(width: 2),
                    Text(
                      challenge.qtdComments.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.015,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Icon(
                      Icons.star_outline,
                      size: size.height * 0.025,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    const SizedBox(width: 2),
                    Text(
                      challenge.rating.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * 0.015,
                      ),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                challenge.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: size.height * 0.02),
              ),
            )
          ],
        ),
      ),
    );
  }
}
