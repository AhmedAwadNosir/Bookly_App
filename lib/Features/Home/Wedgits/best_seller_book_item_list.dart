import 'package:bookly_git/Models/BookModel.dart';
import 'package:flutter/material.dart';

import '../../book_details/views/book_details_view.dart';
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
        return GestureDetector(
          onTap: () {
            var currentBook = books[index];
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return BookDetailsView(
                  book: currentBook,
                );
              },
            ));
          },
          child: BestSellerBookItem(book: books[index]),
        );
      },
    );
  }
}
