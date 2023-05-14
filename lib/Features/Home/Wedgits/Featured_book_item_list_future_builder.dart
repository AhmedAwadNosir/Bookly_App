import 'package:bookly_git/Utils/BookApiServices.dart';
import 'package:flutter/material.dart';

import 'Featured_book_item_list.dart';

class FetureBookItemListViewFutureBuilder extends StatelessWidget {
  const FetureBookItemListViewFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BookApiServices.featchNewstFetureBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return FetureBookItemList(books: snapshot.data!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        } else {
          return Center(
            child: Text(
              snapshot.error.toString(),
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          );
        }
      },
    );
  }
}
