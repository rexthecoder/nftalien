import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimal/gen/assets.gen.dart';
import 'package:minimal/src/style/helpers.dart';
import 'package:minimal/src/style/styles.dart';
import 'package:minimal/theme/zeus_colors.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xff141B22),
          child: SvgPicture.asset(
            Assets.images.sun.path,
            height: 20,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton(
          style: flatButtonStyle,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                Assets.images.discord.path,
                height: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              AutoSizeText(
                "DISCORD",
                style: TextStyles.body.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton(
          style: flatButtonStyle.copyWith(
            backgroundColor: MaterialStateProperty.all(
              ZeusColors.primary,
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                Assets.images.wallet.path,
                height: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              AutoSizeText(
                "CONNECT",
                style: TextStyles.body.copyWith(
                  color: const Color(0xff141B22),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}