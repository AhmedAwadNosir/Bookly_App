import 'package:flutter/material.dart';

import '../../../Utils/AppImages.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation fedingAnimation;
  @override
  void initState() {
    animation();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
          opacity: animationController.value,
          child: Image.asset(AppImages.kLogo)),
    );
  }

  void animation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    fedingAnimation =
        Tween<double>(begin: 0.4, end: 1).animate(animationController);
    animationController.repeat(reverse: true);
    animationController.addListener(() {
      setState(() {});
    });
  }
}
