import 'package:flutter/material.dart';

class DrawerProfileHeader extends StatelessWidget {
  const DrawerProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const UserAccountsDrawerHeader(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/skinCareBg.webp'),
        fit: BoxFit.cover,
      )),
      accountName: Text(
        'Hadeer Mohammed',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      accountEmail: Text('hadirhadir665@gmail.com'),
      currentAccountPicture: CircleAvatar(
        radius: 55,
        backgroundImage: AssetImage('assets/images/profilePic.jpg'),
      ),
    );
  }
}
