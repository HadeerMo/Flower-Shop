import 'package:flutter/material.dart';

class DrawerProfileFooter extends StatelessWidget {
  const DrawerProfileFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Developed by Hader Mohamed © 2024',
            style: TextStyle(fontSize: 15),
          ),
        )
      ],
    );
  }
}
