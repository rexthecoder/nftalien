import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:minimal/src/style/styles.dart';

class MobileNavigationItems extends StatelessWidget {
  const MobileNavigationItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "HOME",
            style: TextStyles.header,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "ABOUT",
            style: TextStyles.header,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "ROADMAP",
            style: TextStyles.header,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "COLLECTION",
            style: TextStyles.header,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "FAQS",
            style: TextStyles.header,
          ),
        ),
      ],
    );
  }
}



