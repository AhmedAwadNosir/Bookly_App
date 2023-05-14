import 'package:bookly_git/Models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'best_seller_book_item.dart';

class BestSellerBookItemList extends StatelessWidget {
  const BestSellerBookItemList({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return BestSellerBookItem(book: books[index]);
      },
    );
  }
}
