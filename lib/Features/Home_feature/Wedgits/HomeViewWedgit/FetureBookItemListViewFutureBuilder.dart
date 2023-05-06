import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/FetureBookItemListView.dart';
import 'package:bookly_git/Utils/BookApiServices.dart';
import 'package:flutter/material.dart';

class FetureBookItemListViewFutureBuilder extends StatelessWidget {
  const FetureBookItemListViewFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BookApiServices.featchNewstFetureBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return FetureBookItemListView(books: snapshot.data!);
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