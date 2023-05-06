import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/BestSellerBookItem.dart';
import 'package:bookly_git/Models/BookModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BestSellerBookItemListView extends StatelessWidget {
  const BestSellerBookItemListView({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: books.length,
      itemBuilder: (context, index) {
    return BestSellerBookItem(book: books[index]);
      },
    );
  }
}
