import 'package:auto_size_text/auto_size_text.dart';
import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';
import 'package:minimal/gen/assets.gen.dart';
import 'package:minimal/src/style/helpers.dart';
import 'package:minimal/src/style/styles.dart';
import 'package:minimal/theme/zeus_colors.dart';

class HowTo extends StatelessWidget {
  const HowTo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: AutoSizeText.rich(
            TextSpan(
              text: 'HOW TO',
              children: [
                TextSpan(
                  text: ' NFTALIEN',
                  style: TextStyles.header.copyWith(
                    color: ZeusColors.primary,
                  ),
                ),
                const TextSpan(
                  text: ' WORK',
                ),
              ],
            ),
            style: TextStyles.header,
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          height: Bamboo.value(
            context: context,
            mobile: 800,
            tablet: 800,
            desktop: 180,
            large: 180,
          ),
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            scrollDirection: Bamboo.value(
              context: context,
              mobile: Axis.vertical,
              large: Axis.horizontal,
              desktop: Axis.horizontal,
            ),
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: StepsCard(
                  title: stepItems[index].title,
                  subtitle: stepItems[index].description,
                  step: stepItems[index].image,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class StepsCard extends StatelessWidget {
  const StepsCard({
    Key? key,
    required this.step,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final AssetGenImage step;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: const Color(0xff141B22),
      ),
      constraints: const BoxConstraints(
        minHeight: 180,
        minWidth: 250,
        maxWidth: 250,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          step.image(
            height: 80,
          ),
          const SizedBox(
            height: 5,
          ),
          AutoSizeText(
            title,
            style: TextStyles.body.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 0.5,
              color: ZeusColors.primary,
            ),
          ),
          AutoSizeText(
            subtitle,
            style: TextStyles.body1.copyWith(
              fontSize: 15,
              height: 1.5,
              wordSpacing: 1,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}


class StoryCard extends StatelessWidget {
  const StoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: const Color(0xff141B22),
      ),
      constraints: const BoxConstraints(
        minHeight: 180,
        maxWidth: 250,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 45.0),
            child: AutoSizeText(
              '01',
              style: TextStyles.header.copyWith(
                color: const Color(0xff21E786).withOpacity(0.3),
                fontSize: 60,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AutoSizeText(
                  "Daily Tokens",
                  style: TextStyles.body.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    "Earn interstellar tokens passively by staking your collectible NFT.",
                    textAlign: TextAlign.center,
                    style: TextStyles.body.copyWith(
                      fontSize: 15,
                      color: const Color(0XFFC2C3C5),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}