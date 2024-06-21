import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_book/core/widget/Custom_loading_endcator.dart';
import 'package:tech_book/core/widget/coustom_error_widget.dart';
import 'package:tech_book/features/home/data/models/book_model/book_model.dart';
import 'package:tech_book/features/home/prisntaton/manger/featured_books/featured_books_state.dart';
import 'package:tech_book/features/home/prisntaton/manger/newset_books/newst_books_cubit/newst_books_cubit.dart';

import 'best_seller_list_view_items.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, state) {
        if (state is NewstBooksSuccesse) {
          return ListView.builder(
            itemCount: 10,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItems(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is NewstBooksFailuer) {
          return CustomErrorWidget(errMessage: state.errMasseg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
