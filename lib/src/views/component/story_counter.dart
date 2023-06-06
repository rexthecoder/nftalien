import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:minimal/src/style/styles.dart';

class StoryCounter extends StatelessWidget {
  const StoryCounter({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
          title,
          style: TextStyles.body.copyWith(
            fontSize: 15,
            color: const Color(0xffC2C3C5),
          ),
        ),
        AutoSizeText(
          description,
          style: TextStyles.header.copyWith(
            color: Colors.white,
            fontSize: 35,
            shadows: [
              const Shadow(
                color: Colors.white,
                blurRadius: 8,
                offset: Offset(0, 0),
              )
            ],
          ),
        ),
      ],
    );
  }
}
