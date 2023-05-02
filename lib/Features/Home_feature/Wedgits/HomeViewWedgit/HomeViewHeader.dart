import 'package:flutter/material.dart';

import '../../../../Utils/AppImages.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 80, width: 100, child: Image.asset(AppImages.kLogo)),
        const Spacer(),
        const Icon(Icons.search_rounded, color: Colors.white),
      ],
    );
  }
}
