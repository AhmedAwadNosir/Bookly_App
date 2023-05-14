import 'package:bookly_git/Features/book_details/wedgits/book_details_header.dart';
import 'package:bookly_git/Features/book_details/wedgits/bottom_related_books_list.dart';
import 'package:flutter/material.dart';
import 'book_details_item.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({super.key});

  @override
  State<BookDetailsViewBody> createState() =>
      _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            BookDetailsHeader(),
            BookDetailsItem(),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: BottomRelatedBooksList(),
            ),
          ],
        ),
      ),
    );
  }
}
