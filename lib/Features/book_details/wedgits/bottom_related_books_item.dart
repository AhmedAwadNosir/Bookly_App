import 'package:bookly_git/Models/BookModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BottomRelatedBooksItem extends StatelessWidget {
  const BottomRelatedBooksItem({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 110,
          child: AspectRatio(
            aspectRatio: 85 / 150,
            child: CachedNetworkImage(
                fit: BoxFit.fill,
                errorWidget: (context, _, __) {
                  return const Icon(
                    Icons.error,
                    color: Colors.white,
                  );
                },
                imageUrl: "${book.image}"),
          ),
        ),
      ),
    );
  }
}
