import 'package:bookly_git/Models/BookModel.dart';
import 'package:flutter/material.dart';

import '../views/book_details_view.dart';
import 'bottom_related_books_item.dart';

class BottomRelatedBooksList extends StatelessWidget {
  const BottomRelatedBooksList({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
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
            child: BottomRelatedBooksItem(
              book: books[index],
            ),
          );
        },
      ),
    );
  }
}
