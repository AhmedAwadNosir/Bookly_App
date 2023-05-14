import 'package:flutter/material.dart';

import '../../../../Utils/AppImages.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Row(
        children: [
          SizedBox(height: 80, width: 100, child: Image.asset(AppImages.kLogo)),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon:
                const Icon(Icons.search_rounded, size: 35, color: Colors.white),
          )
        ],
      ),
    );
  }
}
