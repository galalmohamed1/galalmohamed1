import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(AppAssets.background_RadioPage),
        fit: BoxFit.cover,
      )),
    );
  }
}
