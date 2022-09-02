import 'package:flutter/material.dart';
import 'package:wakke/shared/variables.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: SharedPrefs.primaryPurple.withOpacity(0.8),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.07, horizontal: size.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/logo_wakke_branco.png",
              height: size.height * 0.03,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: size.height * 0.05),
                height: size.height * 0.1,
                width: size.width * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/default_image.png"),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.006),
            const ListTile(
              title: Text(
                "Feed Fun",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const ListTile(
              title: Text(
                "Times",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const ListTile(
              title: Text(
                "Notificações",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const ListTile(
              title: Text(
                "Conexões",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const ListTile(
              title: Text(
                "Minha conta",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const ListTile(
              title: Text(
                "Plano",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const ListTile(
              title: Text(
                "Ajuda",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const ListTile(
              title: Text(
                "Finalizar Cadastro",
                style: TextStyle(color: Colors.red, fontSize: 15),
              ),
            ),
            SizedBox(height: size.height * 0.06),
            const ListTile(
              title: Text(
                "Sair",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const Center(
              child: Text(
                "Termos de Uso e Políticas de Privacidade",
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
