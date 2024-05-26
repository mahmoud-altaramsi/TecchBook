import 'package:flutter/material.dart';
import 'package:tech_book/core/widget/custom_bottom.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomBottom(
              backgroundColor: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              text: '512#',
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ), 
          ),
          Expanded(
            child: CustomBottom(
              backgroundColor: Color(0xffEF8262),
              fontSize: 18,
              fontWeight: FontWeight.w500,
              text: 'free perview',
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
