import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/FetureBookItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FetureBookItemListView extends StatelessWidget {
  const FetureBookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) => const fetureBookItem(),
      ),
    );
  }
}
