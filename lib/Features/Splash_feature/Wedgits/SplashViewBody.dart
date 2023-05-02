import 'package:flutter/material.dart';

import '../../../Utils/AppImages.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Image.asset(AppImages.kLogo),
    );
  }
}
