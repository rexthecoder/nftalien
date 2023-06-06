import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';
import 'package:minimal/gen/assets.gen.dart';
import 'package:minimal/src/widget/custom_drawer.dart';
import 'package:minimal/theme/zeus_colors.dart';

import 'component.dart';

class ResponsiveNavigationBar extends StatefulWidget {
  const ResponsiveNavigationBar({super.key});

  @override
  State<ResponsiveNavigationBar> createState() =>
      _ResponsiveNavigationBarState();
}

class _ResponsiveNavigationBarState extends State<ResponsiveNavigationBar> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: const Color(0xff040B11),
      child: Row(
        mainAxisAlignment: Bamboo.value(
          context: context,
          mobile: MainAxisAlignment.spaceBetween,
          large: MainAxisAlignment.spaceEvenly,
          desktop: MainAxisAlignment.spaceEvenly,
        ),
        children: [
          Image.asset(
            Assets.images.nftlogo.path,
            height: 30,
          ),
          BambooWidget(
            mobile: CustomDrawer(
              color: ZeusColors.primary,
              isExpanded: isExpanded,
              size: 35,
              onPressed: (value) {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: const MobileNavigationItems(),
            ),
            desktop: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavigationItems(),
                SizedBox(
                  width: 100,
                ),
                NavigationButtons(),
              ],
            ),
            large: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavigationItems(),
                SizedBox(
                  width: 100,
                ),
                NavigationButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
