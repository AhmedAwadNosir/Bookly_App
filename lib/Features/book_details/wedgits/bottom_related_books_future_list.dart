import 'package:bookly_git/Utils/BookApiServices.dart';
import 'package:flutter/material.dart';
import 'bottom_related_books_list.dart';

class Bottom_related_books_future_list extends StatelessWidget {
  const Bottom_related_books_future_list({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BookApiServices.featchFetureBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BottomRelatedBooksList(books: snapshot.data!);
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
