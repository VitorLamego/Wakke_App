import 'package:flutter/material.dart';
import 'package:wakke/shared/variables.dart';

class CustomToolBar extends StatelessWidget {
  const CustomToolBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.11,
      child: Stack(
        children: [
          Center(
            child: Container(
              color: SharedPrefs.backgroundColor,
              width: size.width * 0.3,
            ),
          ),
          CustomPaint(
            size: Size(size.width, size.height * 0.11),
            painter: CustomPainterWakke(),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: SharedPrefs.greenButton,
              elevation: 0.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Image.asset(
                  "assets/images/icon_wakke_fun.png",
                  height: size.height * 0.05,
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.height * 0.11,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/icon_input_phone.png",
                    height: size.height * 0.03,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/icon_add.png",
                      height: size.height * 0.03,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.2,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/icon_account.png",
                      height: size.height * 0.03,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/icon_notificacoes.png",
                    height: size.height * 0.03,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomPainterWakke extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);

    path.quadraticBezierTo(size.width * 0.2, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.4, 0, size.width * 0.4, 20);
    path.arcToPoint(Offset(size.width * 0.6, 20),
        radius: const Radius.circular(10.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.6, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.8, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, const Color(0XFFF5F5F5), 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
