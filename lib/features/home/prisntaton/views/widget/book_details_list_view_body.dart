import 'package:flutter/material.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/custom_book_details_appbar.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/Custom_Book_List_View.dart';

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
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: const CustomBookListView(),
            )
          ],
        ),
      )),
    );
  }
}
