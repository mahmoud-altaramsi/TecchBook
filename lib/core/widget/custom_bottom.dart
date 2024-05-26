import 'package:flutter/material.dart';
import 'package:tech_book/core/utils/styles.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.fontSize,
      required this.text,
      required this.fontWeight});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            )),
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
            color: Colors.black,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
