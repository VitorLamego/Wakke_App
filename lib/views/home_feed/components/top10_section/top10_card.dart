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
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
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
                          height: size.height * 0.026,
                          width: size.width * 0.06,
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
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.height * 0.015,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.008),
                      child: Text(
                        challenge.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * 0.011,
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
