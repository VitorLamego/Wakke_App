import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../shared/variables.dart';

class Top10Card extends StatelessWidget {
  const Top10Card({Key? key, required this.index}) : super(key: key);

  final index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      width: size.width * 0.45,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(15)),
      child: Stack(children: [
        Container(
          width: size.width * 0.45,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/img_challenge_ex.png"),
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
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                            "assets/images/img_user_ex_comments.png"),
                      ),
                      const Text(
                        "coroneljp",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.008),
                    child: const Text(
                      "Desafio do céu",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
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
    );
  }
}
