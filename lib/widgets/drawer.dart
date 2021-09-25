import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.britannica.com%2F25%2F222725-050-170F622A%2FIndian-cricketer-Mahendra-Singh-Dhoni-2011.jpg&imgrefurl=https%3A%2F%2Fwww.britannica.com%2Fbiography%2FMahendra-Dhoni&tbnid=kF94PGB-8k17UM&vet=12ahUKEwj9pa73v5fzAhW32nMBHSv2DNoQMygIegUIARDcAQ..i&docid=-3Sey1Y_2rHoMM&w=1298&h=1600&q=ms%20dhoni&ved=2ahUKEwj9pa73v5fzAhW32nMBHSv2DNoQMygIegUIARDcAQ";

    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              //margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Ayu", textScaleFactor: 2.0),
                accountEmail: Text("ash@gmail.com", textScaleFactor: 2.0),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
                size: 30.0,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 30.0,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
                size: 30.0,
              ),
              title: Text(
                "Email ID",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
