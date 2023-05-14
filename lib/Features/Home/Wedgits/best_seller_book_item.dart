import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../Models/BookModel.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 32, top: 16, bottom: 4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              height: 140,
              child: AspectRatio(
                aspectRatio: 112.5 / 168,
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
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 230,
              child: Text(
                book.headline ?? " ",
                style: const TextStyle(fontSize: 22, color: Colors.white),
              ),
            ),
            Text(
              book.author ?? " ",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  "${book.price}\$",
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  "${book.rating}",
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  "(${book.ratingCount})",
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
