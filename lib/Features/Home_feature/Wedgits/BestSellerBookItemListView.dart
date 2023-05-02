import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/BestSellerBookItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BestSellerBookItemListView extends StatelessWidget {
  const BestSellerBookItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => BestSellerBookItem(),));
  }
}