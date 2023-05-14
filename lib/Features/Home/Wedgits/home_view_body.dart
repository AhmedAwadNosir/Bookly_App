import 'package:flutter/material.dart';
import 'best_seller_book_item_list_future_builder.dart';
import 'Featured_book_item_list_future_builder.dart';
import 'best_seller_section_header.dart';
import 'home_view_header.dart';

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
            SliverToBoxAdapter(child: BestSellerBookItemListFutureBuilder()),
          ],
        ));
  }
}
