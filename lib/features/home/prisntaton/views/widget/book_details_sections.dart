import 'package:flutter/material.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/book_action.dart';

import '../../../../../core/utils/styles.dart';
import 'Custom_Book_List_View.dart';
import 'books_reating.dart';

class BookDetailsSections extends StatelessWidget {
  const BookDetailsSections({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .20),
          child: const CustomBookListView(
              imageUrl:
                  "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/419879454_122105384696180455_3208464802904450182_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=pRAzWmtL8kAQ7kNvgEsBR-2&_nc_ht=scontent.fcai19-4.fna&oh=00_AYBgbistyw7L2LyEAYLaKjVG-KEAleNZ0VkldM4zoYvImg&oe=6679FD98"),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
              fontWeight: FontWeight.w500,
              fontFamily: 'prat',
              color: Colors.white),
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle20
              .copyWith(fontWeight: FontWeight.w500, color: Colors.grey),
        ),
        const BooksReating(
          count: 22,
          reating: 4,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
