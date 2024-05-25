import 'package:flutter/material.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/custom_book_details_appbar.dart';

class BookDetailsListViewBody extends StatelessWidget {
  const BookDetailsListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
          ],
        ),
      )),
    );
  }
}
