import 'package:auto_size_text/auto_size_text.dart';
import 'package:bamboo/bamboo.dart';
import 'package:flutter/material.dart';
import 'package:minimal/gen/assets.gen.dart';
import 'package:minimal/src/style/helpers.dart';
import 'package:minimal/src/style/styles.dart';
import 'package:minimal/theme/zeus_colors.dart';

class Heros extends StatelessWidget {
  const Heros({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 600,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Assets.images.nft.image(
            height: 550,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AutoSizeText(
                'EXPLORE NFT COLLECTION',
                textAlign: TextAlign.center,
                style: TextStyles.header.copyWith(
                  height: 1,
                  fontSize: Bamboo.value(
                    context: context,
                    large: 70,
                    desktop: 70,
                    mobile: 60,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              AutoSizeText(
                'A collection of 2525 highly-fashionable NFTs on the ETH Blockchain. Unique,metaverse-ready, and designed to benefit their holders.',
                style: TextStyles.body.copyWith(
                  fontSize: 15,
                  height: 1.5,
                  wordSpacing: 1,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: zeusOutlineButtonStyle.copyWith(
                      backgroundColor: MaterialStateProperty.all(
                        ZeusColors.primary,
                      ),
                      side: MaterialStateProperty.all(
                        const BorderSide(
                          color: ZeusColors.primary,
                          width: 1,
                        ),
                      ),
                      maximumSize: MaterialStateProperty.all(
                        const Size(180, 50),
                      ),
                    ),
                    onPressed: () {},
                    child: AutoSizeText(
                      "Connect Wallet",
                      style: TextStyles.body.copyWith(
                        color: const Color(0xff141B22),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
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
                      "Whitelist Now",
                      style: TextStyles.body.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
