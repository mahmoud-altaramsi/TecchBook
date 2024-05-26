
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
          child: const CustomBookListView(),
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


