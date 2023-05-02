
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../Models/BookModel.dart';

class BestSellerBookItem extends StatelessWidget {
  const BestSellerBookItem({
    super.key,
  });
  
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
                    imageUrl: "https://c4.wallpaperflare.com/wallpaper/442/515/764/mobile-legends-moskov-twilight-dragon-hd-wallpaper-preview.jpg"),
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
            "Title",
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
            Text(
              "Autor",
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Row(
              children: [
                Text(
                  "99\$",
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
                  "4.5",
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  "(54920)",
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
