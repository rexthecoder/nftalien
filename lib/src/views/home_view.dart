import 'package:auto_size_text/auto_size_text.dart';
import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';
import 'package:minimal/gen/assets.gen.dart';
import 'package:minimal/src/style/styles.dart';
import 'package:minimal/src/widget/scroll_to_reveal.dart';
import 'package:minimal/theme/zeus_colors.dart';

import 'component/component.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: ZeusColors.backgroundColor,
      body: SafeArea(
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            return true;
          },
          child: SingleChildScrollView(
            controller: _controller,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ResponsiveNavigationBar(),
                const Heros(),
                const SizedBox(
                  height: 150,
                ),
                ScrollToReveal(
                  animationType: AnimationType.findInLeft,
                  incrementPosition: 0,
                  scrollController: _controller,
                  label: 'How',
                  child: const HowTo(),
                ),
                const SizedBox(
                  height: 60,
                ),
                ScrollToReveal(
                  animationType: AnimationType.findInRight,
                  scrollController: _controller,
                  label: 'Collection',
                  child: const HotCollection(),
                ),
                const SizedBox(
                  height: 60,
                ),
                ScrollToReveal(
                  animationType: AnimationType.findInLeft,
                  scrollController: _controller,
                  label: 'Story',
                  child: const StoryCollection(),
                ),
                const SizedBox(
                  height: 60,
                ),
                Center(
                  child: AutoSizeText.rich(
                    TextSpan(
                      text: 'BINABOX',
                      style: TextStyles.header.copyWith(
                        color: ZeusColors.primary,
                      ),
                      children: const [
                        TextSpan(
                          text: ' PARTNER',
                          style: TextStyles.header,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Assets.images.partnerPng.image(
                  width: Bamboo.value(
                    context: context,
                    mobile: MediaQuery.of(context).size.width,
                    large: MediaQuery.of(context).size.width - 300,
                    desktop: MediaQuery.of(context).size.width - 300,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}










