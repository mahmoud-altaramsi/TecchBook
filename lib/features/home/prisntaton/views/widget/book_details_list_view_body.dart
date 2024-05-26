import 'package:flutter/material.dart';
import 'package:tech_book/core/utils/styles.dart';
import 'package:tech_book/core/widget/custom_bottom.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/book_action.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/books_reating.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/custom_book_details_appbar.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/Custom_Book_List_View.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/similar_book_list_veiw.dart';

class BookDetailsListViewBody extends StatelessWidget {
  const BookDetailsListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
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
            const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "You can also like",
                style: Styles.textStyle16.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const SimilarBookListView(),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      )),
    );
  }
}

