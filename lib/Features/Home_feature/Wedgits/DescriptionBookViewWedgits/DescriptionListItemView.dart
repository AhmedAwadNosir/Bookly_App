import 'package:bookly_git/Features/Home_feature/Wedgits/DescriptionBookViewWedgits/descriptionBooklistitem.dart';
import 'package:flutter/material.dart';

class DescriptionListView extends StatelessWidget {
  const DescriptionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 15,
        itemBuilder: (context, index) {
          return const descriptionBooklistitem();
        },
      ),
    );
  }
}
