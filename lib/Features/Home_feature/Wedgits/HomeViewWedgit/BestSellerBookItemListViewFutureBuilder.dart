import 'package:bookly_git/Utils/BookApiServices.dart';
import 'package:flutter/material.dart';

import 'BestSellerBookItemListView.dart';

class BestSellerBookItemListViewFutureBuilder extends StatelessWidget {
  const BestSellerBookItemListViewFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
      future: BookApiServices.featchFetureBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BestSellerBookItemListView(books: snapshot.data!);
          } else {
            return const CircularProgressIndicator();
          }
        } else {
          return Text(
            snapshot.error.toString(),
            style: const TextStyle(fontSize: 18, color: Colors.white),
          );
        }
      },
    );
  }
}
