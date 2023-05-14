import 'package:bookly_git/Models/BookModel.dart';
import 'package:flutter/material.dart';

import 'Featured_book_item.dart';

class FetureBookItemList extends StatelessWidget {
  const FetureBookItemList({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return FetureBookItem(book: books[index]);
        },
      ),
    );
  }
}
