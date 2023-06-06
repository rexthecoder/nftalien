import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:minimal/src/style/helpers.dart';
import 'package:minimal/src/style/styles.dart';
import 'package:minimal/theme/zeus_colors.dart';

import 'component.dart';

class TheStory extends StatelessWidget {
  const TheStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'THE STORY',
            style: TextStyles.header.copyWith(
              color: Colors.white,
            ),
          ),
          AutoSizeText(
            "Our collection's priority is to reward NFT holders by developing utilities they can use in their current everyday life. Not in a hypothetical future.",
            style: TextStyles.body.copyWith(
              fontSize: 15,
              color: const Color(0XFFC2C3C5),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Wrap(
            children: [
              StoryCounter(
                title: 'Total Iteam',
                description: '2240+',
              ),
              SizedBox(
                width: 60,
              ),
              StoryCounter(
                title: 'Profiles whitelisted',
                description: '1000+',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            style: zeusOutlineButtonStyle.copyWith(
              side: MaterialStateProperty.all(
                const BorderSide(
                  color: ZeusColors.primary,
                  width: 2,
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Colors.transparent,
              ),
              maximumSize: MaterialStateProperty.all(
                const Size(180, 50),
              ),
            ),
            onPressed: () {},
            child: AutoSizeText(
              "READ MORE",
              style: TextStyles.body.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
