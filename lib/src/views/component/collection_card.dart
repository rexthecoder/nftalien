import 'package:auto_size_text/auto_size_text.dart';
import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';
import 'package:minimal/gen/assets.gen.dart';
import 'package:minimal/src/style/styles.dart';
import 'package:minimal/src/views/home_view.dart';
import 'package:minimal/src/widget/layout.dart';

import 'component.dart';

class CollectionCard extends StatelessWidget {
  const CollectionCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final AssetGenImage card;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: const Color(0xff141B22),
      ),
      margin: EdgeInsets.zero,
      padding: const EdgeInsets.symmetric(vertical: 18),
      constraints: const BoxConstraints(
        minHeight: 250,
        minWidth: 250,
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          card.image(
            width: 220,
          ),
          const SizedBox(
            height: 10,
          ),
          AutoSizeText(
            'SKISIRS #02',
            style: TextStyles.body1.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}


class StoryCollection extends StatelessWidget {
  const StoryCollection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width - 400,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: Bamboo.value(
            context: context,
            mobile: BoxFit.cover,
            large: BoxFit.fill,
            desktop: BoxFit.fill,
            tablet: BoxFit.contain,
          ),
          image: AssetImage(
            Assets.images.story.path,
          ),
        ),
      ),
      child: Wrap(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: TheStory(),
          ),
          SizedBox(
            width: 500,
            child: GridView.builder(
              itemCount: 4,
              padding: EdgeInsets.symmetric(
                vertical: Bamboo.value(
                  context: context,
                  mobile: 60,
                  large: 0,
                  desktop: 0,
                ),
                horizontal: Bamboo.value(
                  context: context,
                  mobile: 60,
                  large: 10,
                  desktop: 10,
                ),
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Bamboo.value(
                  context: context,
                  mobile: 1,
                  desktop: 2,
                  large: 2,
                ),
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                mainAxisExtent: 180,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const StoryCard();
              },
            ),
          )
        ],
      ),
    );
  }
}

class HotCollection extends StatelessWidget {
  const HotCollection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: Bamboo.value(
              context: context,
              mobile: 35,
              large: 205.0,
              desktop: 205.0,
            ),
          ),
          child: AutoSizeText(
            'HOT COLLECTION',
            style: TextStyles.header.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Center(
          child: SizedBox(
            child: Layout(
              crossAxisCount: Bamboo.value(
                context: context,
                mobile: 1,
                tablet: 2,
                desktop: 3,
                large: 4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}



