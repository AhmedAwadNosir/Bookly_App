import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/BestSellerSectionHeader.dart';
import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/FetureBookItemListView.dart';
import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/HomeViewHeader.dart';
import 'package:bookly_git/Utils/BookApiServices.dart';
import 'package:flutter/material.dart';

import 'BestSellerBookItemListView.dart';
import 'BestSellerBookItemListViewFutureBuilder.dart';
import 'FetureBookItemListViewFutureBuilder.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32),
      child: Column(
        children: [
          const HomeHeader(),
          FetureBookItemListViewFutureBuilder(),
          const SizedBox(
            height: 60,
          ),
          const BestSelerSectionHeader(),
          BestSellerBookItemListViewFutureBuilder(),
        ],
      ),
    );
  }
}



