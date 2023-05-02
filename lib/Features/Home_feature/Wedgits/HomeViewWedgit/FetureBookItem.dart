
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class fetureBookItem extends StatelessWidget {
  const fetureBookItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
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
                    imageUrl:"https://c4.wallpaperflare.com/wallpaper/442/515/764/mobile-legends-moskov-twilight-dragon-hd-wallpaper-preview.jpg"),
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
