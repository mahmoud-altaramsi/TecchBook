import 'package:flutter/material.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/Custom_Book_List_View.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookListView(
                imageUrl:
                    "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/419879454_122105384696180455_3208464802904450182_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=pRAzWmtL8kAQ7kNvgEsBR-2&_nc_ht=scontent.fcai19-4.fna&oh=00_AYBgbistyw7L2LyEAYLaKjVG-KEAleNZ0VkldM4zoYvImg&oe=6679FD98"),
          );
        },
      ),
    );
  }
}
