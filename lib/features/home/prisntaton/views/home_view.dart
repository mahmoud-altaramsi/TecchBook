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
            SizedBox(
              height: 50,
            ),
            Text(
              "Best Saller",
              style: Styles.titleMedium,
            ),
            BestSellerListView(),
          ],
        ),
      ),
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/419879454_122105384696180455_3208464802904450182_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=HHatEzu4oWIQ7kNvgF7wFxb&_nc_ht=scontent.fcai19-4.fna&oh=00_AYAVkg53QpbrLNG9bH3ddwQaYVtDA4blGI3y6M8MwNuLWQ&oe=664FCD98"),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
