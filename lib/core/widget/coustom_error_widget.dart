import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tech_book/core/utils/styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.errMessage,
  });
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Styles.textStyle20.copyWith(color: Colors.cyanAccent),
    );
  }
}
