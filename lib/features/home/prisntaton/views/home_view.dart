import 'package:flutter/material.dart';
import 'package:tech_book/core/utils/styles.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/custom_list_view_body.dart';

import 'widget/custom_App_bar.dart';
import 'widget/feature_book_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CostumAppBar(),
            FeaturedBookListVeiw(),
            Text(
              "Best Saller",
              style: Styles.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
