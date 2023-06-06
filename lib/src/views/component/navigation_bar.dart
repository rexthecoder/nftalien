import 'package:auto_size_text/auto_size_text.dart';
import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';
import 'package:minimal/gen/assets.gen.dart';
import 'package:minimal/src/style/styles.dart';
import 'package:minimal/theme/zeus_colors.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Bamboo.number(
          context: context,
          mobile: 2,
          desktop: 2,
          unit: Unit.vmax,
        ),
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: ZeusColors.secondary,
            width: 2,
          ),
        ),
      ),
      height: Bamboo.number(
        context: context,
        mobile: 70,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const AutoSizeText(
                  "Hello",
                  style: TextStyles.body,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: const AutoSizeText(
                  "University",
                  style: TextStyles.body,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: const AutoSizeText(
                  "Course",
                  style: TextStyles.body,
                ),
              )
            ],
          ),
          Image(
            height: 30,
            image: AssetImage(
              Assets.images.zeus.path,
            ),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const AutoSizeText(
                  "Use Case",
                  style: TextStyles.body,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: const AutoSizeText(
                  "Plans",
                  style: TextStyles.body,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {},
                child: const AutoSizeText(
                  "Resources",
                  style: TextStyles.body,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
