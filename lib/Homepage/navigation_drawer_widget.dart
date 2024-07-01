import 'package:flutter/material.dart';


class NaviDrawer extends StatelessWidget {
  const NaviDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 20);
    return Drawer(
        child: Container(
      color: Color.fromRGBO(50, 75, 205, 0.98),
      child: Container(
        child: ListView(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/images.jpg'),
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  buildMenuItem(
                    text: 'አኃዝ ቀይሬ',
                    icon: Icons.change_circle,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  SizedBox(height: 16),
                  buildMenuItem(
                    text: 'አጠቃቀሙ',
                    icon: Icons.menu_book,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  SizedBox(height: 16),
                  buildMenuItem(
                    text: 'ስለእኔ',
                    icon: Icons.emoji_emotions,
                    onClicked: () => selectedItem(context, 2),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  buildMenuItem(
      {required String text, required IconData icon, VoidCallback? onClicked}) {
    final color = Colors.white;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int i) {
    Navigator.of(context).pop();
    switch (i) {
      case 0:
        Navigator.pushNamed(context, '/second');
        break;
      case 1:
        Navigator.pushNamed(context, '/third');
        break;
      case 2:
        Navigator.pushNamed(context, '/fourth');
        break;
    }
  }
}
