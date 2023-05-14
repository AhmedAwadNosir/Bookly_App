import 'package:flutter/material.dart';

class BottomRelatedBooksHeader extends StatelessWidget {
  const BottomRelatedBooksHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 32,
        top: 51,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "You Can Also Like",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
