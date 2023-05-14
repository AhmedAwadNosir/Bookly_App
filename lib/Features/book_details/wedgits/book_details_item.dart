import 'package:bookly_git/Models/BookModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsItem extends StatefulWidget {
  const BookDetailsItem({
    super.key,
    required this.bookDetails,
  });
  final BookModel bookDetails;

  @override
  State<BookDetailsItem> createState() => _BookDetailsItemState();
}

class _BookDetailsItemState extends State<BookDetailsItem> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              child: AspectRatio(
                aspectRatio: 168 / 243,
                child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    errorWidget: (context, _, __) {
                      return const Icon(
                        Icons.error,
                        color: Colors.white,
                      );
                    },
                    imageUrl: "${widget.bookDetails.image}"),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 8,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Text(
              "${widget.bookDetails.headline}",
              textAlign: TextAlign.center,
              softWrap: true,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            "${widget.bookDetails.author}",
            style: const TextStyle(fontSize: 24, color: Colors.grey),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              "${widget.bookDetails.rating}  (${widget.bookDetails.ratingCount})",
              style: const TextStyle(color: Colors.white, fontSize: 16),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 37),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                  ),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "${widget.bookDetails.price}\$",
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                  color: Color(0xFFef8262),
                ),
                child: const Center(
                  child: Text(
                    "Free preview",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
