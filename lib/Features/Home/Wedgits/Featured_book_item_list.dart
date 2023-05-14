import 'package:bookly_git/Features/book_details/views/book_details_view.dart';
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
            child: FetureBookItem(
              book: books[index],
            ),
          );
        },
      ),
    );
  }
}
