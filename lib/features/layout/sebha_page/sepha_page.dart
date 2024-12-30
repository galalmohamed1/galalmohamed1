import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';

class SephaPage extends StatelessWidget {
  const SephaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(AppAssets.background_SephaPage),
        fit: BoxFit.cover,
      )),
    );
  }
}
