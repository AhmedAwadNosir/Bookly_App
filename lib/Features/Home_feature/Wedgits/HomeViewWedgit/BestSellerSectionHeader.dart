import 'package:flutter/material.dart';

class BestSelerSectionHeader extends StatelessWidget {
  const BestSelerSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          "Best Seller",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ));
  }
}