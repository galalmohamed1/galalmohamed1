import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';

class HadithPage extends StatelessWidget {
  const HadithPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.background_HadithPage),
              alignment: Alignment.topCenter)),
    );
  }
}
