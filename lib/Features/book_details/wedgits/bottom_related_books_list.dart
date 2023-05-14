import 'package:flutter/material.dart';

import 'bottom_related_books_item.dart';

class BottomRelatedBooksList extends StatelessWidget {
  const BottomRelatedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return const BottomRelatedBooksItem();
        },
      ),
    );
  }
}
