import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final IconData? frontIcon;
  final String buttonText;
  final Color textColor;
  final IconData? backIcon;
  final int opacityNumber;
  const CategoryButton({
    super.key,
    this.frontIcon,
    required this.buttonText,
    this.backIcon,
    required this.opacityNumber,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white.withAlpha(opacityNumber),
            side: BorderSide(
              color: Colors.white.withAlpha(150),
            )),
        label: Row(
          children: [
            Icon(
              frontIcon,
              color: Colors.white54,
            ),
            Text(
              buttonText,
              style: TextStyle(color: textColor),
            ),
            Icon(
              backIcon,
              color: Colors.white54,
            ),
          ],
        ));
  }
}
