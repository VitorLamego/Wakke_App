import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({Key? key}) : super(key: key);

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
                    height: size.height * 0.05,
                    width: size.width * 0.08,
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.02,
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child:
                        Image.asset("assets/images/img_user_ex_comments.png"),
                  ),
                  const Text(
                    "coroneljp",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/img_challenge_ex.png"),
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
                  const Text(
                    "6",
                    style: TextStyle(fontWeight: FontWeight.bold),
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
                  const Text(
                    "2",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 15),
                  Icon(
                    Icons.star_outline,
                    size: size.height * 0.02,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  const SizedBox(width: 2),
                  const Text(
                    "0.0",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const Text(
              "Teste seus conhecimento sobre doces e brincadeiras de criança",
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
