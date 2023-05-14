import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BottomRelatedBooksItem extends StatelessWidget {
  const BottomRelatedBooksItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 124,
          child: AspectRatio(
            aspectRatio: 78 / 124,
            child: CachedNetworkImage(
                fit: BoxFit.fill,
                errorWidget: (context, _, __) {
                  return const Icon(
                    Icons.error,
                    color: Colors.white,
                  );
                },
                imageUrl:
                    "https://c4.wallpaperflare.com/wallpaper/442/515/764/mobile-legends-moskov-twilight-dragon-hd-wallpaper-preview.jpg"),
          ),
        ),
      ),
    );
  }
}
