import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_color.dart';

class SuraseListScreen extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String text3;

  const SuraseListScreen(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 386,
      height: 63,
      margin: EdgeInsets.only(left: 21, top: 10, right: 21),
      child: Row(
        children: [
          Image(image: AssetImage(image), color: AppColor.white),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: AppColor.white),
              ),
              Text(
                text2,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColor.white),
              ),
            ],
          ),
          Spacer(),
          Text(
            text3,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColor.white),
          )
        ],
      ),
    );
  }
}
