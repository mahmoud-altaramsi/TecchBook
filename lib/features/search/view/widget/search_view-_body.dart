import 'package:flutter/material.dart';
import 'package:tech_book/core/utils/styles.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/best_seller_list_view_items.dart';
import 'package:tech_book/features/search/view/widget/custom_search_text_fieled.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSearchTextField(),
        SizedBox(
          height: 16,
        ),
        Text(
          "Search Result",
          style: Styles.textStyle18,
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: SearchResultListView(),
        ),
      ],
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListViewItems(),
        );
      },
    );
  }
}
