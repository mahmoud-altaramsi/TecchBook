import 'package:flutter/material.dart';
import 'package:tech_book/core/utils/styles.dart';

import 'similar_book_list_veiw.dart';

class SimilarBooksSections extends StatelessWidget {
  const SimilarBooksSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like",
          style: Styles.textStyle16.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 8,
        ),
        const SimilarBookListView(),
      ],
    );
  }
}
