import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/FetureBookItem.dart';
import 'package:bookly_git/Models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FetureBookItemListView extends StatelessWidget {
  const FetureBookItemListView({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return fetureBookItem(book: books[index]);
        },
      ),
    );
  }
}
