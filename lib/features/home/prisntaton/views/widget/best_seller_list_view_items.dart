import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_book/features/home/prisntaton/views/widget/books_reating.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/430612447_122129847548180455_6496186191703706656_n.jpg?_nc_cat=101&_nc_cb=99be929b-ddd1f5c1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=rl-Xt0VJ1i0Q7kNvgFAKxgl&_nc_ht=scontent.fcai19-4.fna&oh=00_AYAVfcgq6MqzJ7PduJyxo3khuKllqZQu9QeNfYLnrnnuMQ&oe=6656F078"),
                ),
              ),
            ),
          ),
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
                child: const Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "J.K. Rowling",
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              const Row(
                children: [
                  Text(
                    "19.99 €",
                    style: Styles.textStyle20,
                  ),
                  Spacer(),
                  BooksReating()
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
