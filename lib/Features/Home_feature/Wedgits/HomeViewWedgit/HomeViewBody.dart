import 'package:bookly_git/Features/Home_feature/Wedgits/BestSellerBookItemListView.dart';
import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/BestSellerSectionHeader.dart';
import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/FetureBookItemListView.dart';
import 'package:bookly_git/Features/Home_feature/Wedgits/HomeViewWedgit/HomeViewHeader.dart';
import 'package:bookly_git/Utils/BookApiServices.dart';
import 'package:flutter/material.dart';

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
          FutureBuilder(
            future: BookApiServices.featchFetureBooks(),
            builder: (context, snapshot) {
              if (!snapshot.hasError) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return FetureBookItemListView(books: snapshot.data!);
                } else {
                  return const CircularProgressIndicator();
                }
              } else {
                return Text(
                  snapshot.error.toString(),
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                );
              }
            },
          ),
          const SizedBox(
            height: 60,
          ),
          const BestSelerSectionHeader(),
          BestSellerBookItemListView(),
        ],
      ),
    );
  }
}
