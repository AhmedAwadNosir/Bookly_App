import 'package:bookly_git/Models/BookModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../book_details/views/book_details_view.dart';

class FetureBookItem extends StatelessWidget {
  const FetureBookItem({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DescriptionView.id);
              },
              child: SizedBox(
                height: 224,
                child: AspectRatio(
                  aspectRatio: 140 / 224,
                  child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      errorWidget: (context, _, __) {
                        return const Icon(
                          Icons.error,
                          color: Colors.white,
                        );
                      },
                      imageUrl: book.image ??
                          'https://th.bing.com/th/id/OIP.9zpFpYq2xuDkiJevIxpJ4gHaQd?pid=ImgDet&rs=1'),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 13,
          right: 25,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.withOpacity(0.3),
            ),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
