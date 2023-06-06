import 'package:auto_size_text/auto_size_text.dart';
import 'package:bamboo/foundation/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:minimal/src/style/styles.dart';
import 'package:minimal/theme/zeus_colors.dart';

import 'src/views/home_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: ZeusColors.backgroundColor,
    systemNavigationBarDividerColor: ZeusColors.backgroundColor,
    statusBarColor: ZeusColors.backgroundColor,
  ));
  runApp(const ZeusApp());
}

class ZeusApp extends StatelessWidget {
  const ZeusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BambooBreakPoint(
      tablet: 1000,
      child: MaterialApp(
        color: ZeusColors.backgroundColor,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        title: 'NFTALIEN',
        theme: ThemeData(
          primaryColor: ZeusColors.primary,
          useMaterial3: true,
        ),
        home: const HomeView(),
      ),
    );
  }
}

class NotSupported extends StatelessWidget {
  const NotSupported({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ZeusColors.backgroundColor,
      body: Center(
        child: AutoSizeText(
          'We don\'t support such screen.\nWe are sorry ',
          style: TextStyles.header,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
