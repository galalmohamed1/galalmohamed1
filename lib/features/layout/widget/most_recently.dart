import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_color.dart';

class RecentlyScreen extends StatelessWidget {
  final Color color;
  final String text1;
  final String text2;
  final String text3;
  final String imagePath;

  const RecentlyScreen({
    super.key,
    required this.color,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 150,
      margin: EdgeInsets.only(left: 8),
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  text3,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                width: 151,
                height: 136,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image(
                  image: AssetImage(imagePath),
                )),
          ),
        ],
      ),
    );
  }
}
