import 'package:flower_shop/constant.dart';
import 'package:flutter/material.dart';

class CustomAppbarPages extends StatelessWidget {
  const CustomAppbarPages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
        color: appbarColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Row(
              children: [
                Stack(children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                  Opacity(
                      opacity: .7,
                      child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(211, 146, 255, 193),
                          ),
                          child: const Text('8')))
                ]),
                const Text(
                  '\$ 128',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(
                  width: 13,
                ),
              ],
            )
          ],
        ));
  }
}
