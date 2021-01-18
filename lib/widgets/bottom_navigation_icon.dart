import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/title.dart';

class BottomNavIcon extends StatelessWidget {
  final IconData icon;
  final String name;
  final Function onTap;

  const BottomNavIcon({Key key, this.icon, this.name, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap ?? null,
        child: Column(
          children: [
            Icon(
              icon,
            ),
            SizedBox(
              height: 2,
            ),
            CustomText(text: name)
          ],
        ),
      ),
    );
  }
}
