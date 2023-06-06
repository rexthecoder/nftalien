import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:minimal/src/style/styles.dart';

class NavigationItems extends StatelessWidget {
  const NavigationItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "HOME",
            style: TextStyles.body,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "ABOUT",
            style: TextStyles.body,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "ROADMAP",
            style: TextStyles.body,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "COLLECTION",
            style: TextStyles.body,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            "FAQS",
            style: TextStyles.body,
          ),
        ),
      ],
    );
  }
}
