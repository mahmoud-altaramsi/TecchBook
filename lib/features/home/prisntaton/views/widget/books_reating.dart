import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BooksReating extends StatelessWidget {
  const BooksReating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.reating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int reating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 15,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.5,
        ),
        Text(
          reating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "($count)",
          style: Styles.textStyle16.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
