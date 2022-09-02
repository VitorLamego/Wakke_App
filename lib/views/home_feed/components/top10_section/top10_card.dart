import 'package:flutter/material.dart';
import 'package:wakke/model/challenge.dart';
import 'package:wakke/views/challenge/challenge_view.dart';
import '../../../../shared/variables.dart';

class Top10Card extends StatelessWidget {
  const Top10Card({Key? key, required this.index, required this.challenge})
      : super(key: key);

  final index;
  final Challenge challenge;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      width: size.width * 0.45,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(15)),
      child: MaterialButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => ChallengePage(challenge: challenge)),
          ),
        ),
        padding: EdgeInsets.all(0),
        child: Stack(children: [
          Container(
            width: size.width * 0.45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(challenge.wallpaper),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  (index + 1).toString(),
                  style: const TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
              Container(
                height: size.height * 0.065,
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: SharedPrefs.primaryPurple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: size.height * 0.022,
                          width: size.width * 0.05,
                          margin: EdgeInsets.only(
                            right: size.width * 0.02,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: challenge.author.userImage != null
                                    ? NetworkImage(challenge.author.userImage!)
                                    : const AssetImage(
                                            "assets/images/default_image.png")
                                        as ImageProvider),
                          ),
                        ),
                        Text(
                          challenge.author.userNickname,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.008),
                      child: Text(
                        challenge.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 8,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
