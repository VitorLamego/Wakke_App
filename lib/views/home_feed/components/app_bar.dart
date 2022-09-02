import 'package:flutter/material.dart';
import 'package:wakke/shared/variables.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.context}) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      elevation: 0.4,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: Image.asset(
          "assets/images/icon_header_menu.png",
          height: size.height * 0.02,
        ),
      ),
      title: SizedBox(
        width: size.width * 0.23,
        child: Image.asset(
          "assets/images/logo_wakke_roxo.png",
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.push_pin_outlined,
            size: size.height * 0.025,
            color: SharedPrefs.primaryPurple,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/images/icon_header_search.png",
            height: size.height * 0.025,
          ),
        ),
      ],
    );
  }
}
