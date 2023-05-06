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
    return const Padding(
        padding: EdgeInsets.only(left: 32),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: HomeHeader()),
            SliverToBoxAdapter(child: FetureBookItemListViewFutureBuilder()),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 60,
            )),
            SliverToBoxAdapter(child: BestSelerSectionHeader()),
            SliverToBoxAdapter(
                child: BestSellerBookItemListViewFutureBuilder()),
          ],
        ));
  }
}
