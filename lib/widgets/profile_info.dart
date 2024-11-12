import 'package:flower_shop/pages/home_page.dart';
import 'package:flower_shop/widgets/drawer_header.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DrawerProfileHeader(),
        ListTile(
          title: const Text('Home'),
          leading: const Icon(Icons.home),
          onTap: () {
            Navigator.pushReplacementNamed(context, HomePage.id);
          },
        ),
        ListTile(
          title: const Text('My Product'),
          leading: const Icon(Icons.shopping_cart),
          onTap: () {},
        ),
        ListTile(
          title: const Text('About'),
          leading: const Icon(Icons.help),
          onTap: () {},
        ),
        ListTile(
          title: const Text('LogOut'),
          leading: const Icon(Icons.exit_to_app),
          onTap: () {},
        ),
      ],
    );
  }
}
