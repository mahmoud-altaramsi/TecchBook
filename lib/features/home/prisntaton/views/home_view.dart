import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_book/core/utils/styles.dart';

import 'widget/best_seller_list_view.dart';
import 'widget/custom_App_bar.dart';
import 'widget/feature_book_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CostumAppBar(),
            FeaturedBookListVeiw(),
            SizedBox(
              height: 50,
            ),
            Text(
              "Best Saller",
              style: Styles.titleMedium,
            ),
            SizedBox(
              height: 20,
            ),
            BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
