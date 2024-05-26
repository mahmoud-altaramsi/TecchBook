import 'package:flutter/material.dart';
import 'package:tech_book/core/utils/styles.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/book_action.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/book_details_sections.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/books_reating.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/custom_book_details_appbar.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/Custom_Book_List_View.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/similar_book_list_veiw.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/similar_book_sections.dart';

class BookDetailsListViewBody extends StatelessWidget {
  const BookDetailsListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSections(),
                  Expanded(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  SimilarBooksSections(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
