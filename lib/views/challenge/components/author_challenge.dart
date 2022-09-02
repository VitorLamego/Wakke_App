import 'package:flutter/material.dart';
import 'package:wakke/model/challenge.dart';
import 'package:wakke/shared/variables.dart';

class AuthorChallenge extends StatelessWidget {
  const AuthorChallenge({Key? key, required this.challenge}) : super(key: key);

  final Challenge challenge;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      decoration: BoxDecoration(
        color: SharedPrefs.backgroundColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: size.height * 0.06,
                width: size.width * 0.12,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: challenge.author.userImage != null
                        ? NetworkImage(challenge.author.userImage!)
                        : AssetImage("assets/images/default_image.png")
                            as ImageProvider,
                  ),
                ),
              ),
              Text(
                challenge.author.userNickname,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: size.height * 0.02),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: size.height * 0.035,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/icon_target.png"),
                    SizedBox(width: size.width * 0.01),
                    Text(
                      "${challenge.correctAvg.toStringAsFixed(1)}%",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.height * 0.013,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: size.height * 0.035,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/icon_timer.png"),
                    SizedBox(width: size.width * 0.01),
                    Text(
                      "${challenge.durationAvg.toStringAsFixed(0)}seg",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: size.height * 0.013,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
