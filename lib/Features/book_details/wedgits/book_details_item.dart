import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailsItem extends StatelessWidget {
  const BookDetailsItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            height: 243,
            child: AspectRatio(
              aspectRatio: 162 / 243,
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
        const Padding(
          padding: EdgeInsets.only(top: 35, bottom: 8),
          child: Text(
            "The Jungle Book",
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Rudyard Kipling",
            style: TextStyle(fontSize: 24, color: Colors.grey),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              "4.8  (5450)",
              style: TextStyle(color: Colors.white, fontSize: 16),
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
                child: const Center(
                  child: Text(
                    "19.99\$",
                    style: TextStyle(
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
        Padding(
          padding: const EdgeInsets.only(
            left: 32,
            top: 51,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "You Can Also Like",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
