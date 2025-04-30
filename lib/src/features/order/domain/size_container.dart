import 'package:flutter/material.dart';

class SizeContainer extends StatelessWidget {
  final Color containerColor;
  final double radiusTopLeft;
  final double radiusTopRight;
  final double radiusBottomLeft;
  final double radiusBottomRight;
  final String text;
  final Color textColor;
  const SizeContainer({
    super.key,
    required this.containerColor,
    required this.radiusTopLeft,
    required this.radiusTopRight,
    required this.radiusBottomLeft,
    required this.radiusBottomRight,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radiusTopLeft),
          topRight: Radius.circular(radiusTopRight),
          bottomLeft: Radius.circular(radiusBottomLeft),
          bottomRight: Radius.circular(radiusBottomRight),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
