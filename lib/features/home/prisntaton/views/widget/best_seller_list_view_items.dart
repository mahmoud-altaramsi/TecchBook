import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_book/core/utils/app_routers.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/Custom_Book_List_View.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/books_reating.dart';

import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kbookDetailsveiw);
          },
          child: SizedBox(
              height: 130,
              child: CustomBookListView(
                  imageUrl: bookModel.volumeInfo.imageLinks.thumbnail)),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  bookModel.volumeInfo.title!,
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                bookModel.volumeInfo.authors![0],
                style: Styles.textStyle16,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  const Text(
                    "Free",
                    style: Styles.textStyle20,
                  ),
                  const Spacer(),
                  BooksReating(
                    reating: bookModel.volumeInfo.pageCount ?? 512,
                    count: bookModel.volumeInfo.pageCount ?? 2,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
