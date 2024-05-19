import 'package:flutter/material.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/custom_list_view_body.dart';

class FeaturedBookListVeiw extends StatelessWidget {
  const FeaturedBookListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomListViweBody(),
          );
        },
      ),
    );
  }
}
