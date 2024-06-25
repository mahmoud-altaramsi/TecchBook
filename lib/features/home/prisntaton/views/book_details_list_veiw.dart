import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_book/features/home/data/models/book_model/book_model.dart';
import 'package:tech_book/features/home/prisntaton/manger/similar_books/similar_books_cubit.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/book_details_list_view_body.dart';

class BookDetailsListView extends StatefulWidget {
  const BookDetailsListView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsListView> createState() => _BookDetailsListViewState();
}

class _BookDetailsListViewState extends State<BookDetailsListView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).featchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const BookDetailsListViewBody();
  }
}
