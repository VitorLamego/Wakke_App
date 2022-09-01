import 'package:flutter/material.dart';
import 'package:wakke/model/challenge.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({Key? key, required this.challenge}) : super(key: key);

  final Challenge challenge;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.35,
      margin: EdgeInsets.only(top: size.height * 0.03),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: size.height * 0.04,
                    width: size.width * 0.08,
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                    ),
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
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {},
                height: size.height * 0.02,
                minWidth: size.width * 0.01,
                padding: const EdgeInsets.all(0),
                child: const Icon(Icons.more_vert, size: 15),
              )
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
                    height: size.height * 0.02,
                  ),
                  const SizedBox(width: 2),
                  Text(
                    challenge.timesPlayed.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.chat_outlined,
                    size: size.height * 0.02,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    challenge.qtdComments.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 15),
                  Icon(
                    Icons.star_outline,
                    size: size.height * 0.02,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    challenge.rating.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
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
            ),
          )
        ],
      ),
    );
  }
}
