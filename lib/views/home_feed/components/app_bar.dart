import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      elevation: 0.4,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset(
          "assets/images/icon_header_menu.png",
          height: size.height * 0.02,
        ),
      ),
      title: SizedBox(
        width: size.width * 0.3,
        child: Image.asset(
          "assets/images/logo_wakke_roxo.png",
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/images/icon_edit_challenge.png",
            height: size.height * 0.02,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/images/icon_header_search.png",
            height: size.height * 0.02,
          ),
        ),
      ],
    );
  }
}
