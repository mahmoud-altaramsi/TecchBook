import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_book/core/widget/Custom_loading_endcator.dart';
import 'package:tech_book/core/widget/coustom_error_widget.dart';
import 'package:tech_book/features/home/prisntaton/manger/featured_books/featured_books_cubit.dart';
import 'package:tech_book/features/home/prisntaton/manger/featured_books/featured_books_state.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/Custom_Book_List_View.dart';

class FeaturedBookListVeiw extends StatelessWidget {
  const FeaturedBookListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookListView(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks.thumbnail),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMasseg);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
