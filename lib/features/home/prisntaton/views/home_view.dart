import 'package:flutter/material.dart';
import 'package:tech_book/core/utils/styles.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/best_seller_list_view.dart';

import 'widget/custom_App_bar.dart';
import 'widget/feature_book_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CostumAppBar(),
                ),
                FeaturedBookListVeiw(),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Best Saller",
                    style: Styles.titleMedium,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: BestSellerListView(),
            ),
          ),
        ],
      ),
    );
  }
}
