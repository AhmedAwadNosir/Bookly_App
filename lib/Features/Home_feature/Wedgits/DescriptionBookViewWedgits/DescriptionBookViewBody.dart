import 'package:bookly_git/Features/Home_feature/Wedgits/DescriptionBookViewWedgits/DescriptionBookItem.dart';
import 'package:flutter/material.dart';
import 'DescriptionListItemView.dart';
import 'DescriptionViewHeader.dart';

class DescriptionBookViewBody extends StatefulWidget {
  const DescriptionBookViewBody({super.key});

  @override
  State<DescriptionBookViewBody> createState() =>
      _DescriptionBookViewBodyState();
}

class _DescriptionBookViewBodyState extends State<DescriptionBookViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            DescriptionViewHeader(),
            DescriptionBookItem(),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: DescriptionListView(),
            ),
          ],
        ),
      ),
    );
  }
}
