import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomMoreVertIcon extends StatelessWidget {
  const CustomMoreVertIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialButton(
      onPressed: () {},
      height: size.height * 0.02,
      minWidth: size.width * 0.01,
      padding: const EdgeInsets.all(0),
      child: PopupMenuButton<Text>(
        itemBuilder: (context) => buildItem(),
        child: Icon(
          Icons.more_vert,
          size: 15,
        ),
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  List<PopupMenuEntry<Text>> buildItem() => [
        PopupMenuItem(
            child: Text("Denunciar", style: TextStyle(fontSize: 12)),
            height: 20),
        PopupMenuItem(
          child: Text("Compartilhar", style: TextStyle(fontSize: 12)),
          height: 20,
        ),
        PopupMenuItem(
          child: Text("Cancelar", style: TextStyle(fontSize: 12)),
          height: 20,
        )
      ];
}
