import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_color.dart';
import 'package:islami/features/layout/widget/most_recently.dart';
import 'package:islami/features/layout/widget/suras_list.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  late TextEditingController searchTextController;

  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.background_QuranPage),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage(AppAssets.icon_islami),
                    width: 250,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: TextFormField(
                    style: TextStyle(color: AppColor.white),
                    controller: searchTextController,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ImageIcon(
                          AssetImage(AppAssets.icone_quran),
                          color: AppColor.gold,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        //  و معاها الاكشن بتاعها اللي هو بيمسح الكلام من السيرشxايكون ال
                        onTap: () {
                          searchTextController.clear();
                          FocusScope.of(context).unfocus();
                        },
                        child: Icon(
                          Icons.clear,
                          color: AppColor.gold,
                        ),
                      ),
                      hintText: "Sura Name",
                      hintStyle: TextStyle(color: AppColor.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Color(0xFFE2BE7F), width: 2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: Text(
                    "Most Recently",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 170,
                  margin: EdgeInsets.only(left: 10),
                  // color: Colors.white,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          RecentlyScreen(
                              color: AppColor.gold,
                              text1: "Al-Anbiya",
                              text2: "الأنبياء",
                              text3: "112 Verses",
                              imagePath: AppAssets.image_AlAnbiya),
                          RecentlyScreen(
                              color: AppColor.gold,
                              text1: "Al-Fatiha",
                              text2: "الفاتحه",
                              text3: "7 Verses",
                              imagePath: AppAssets.image_AlAnbiya),
                          RecentlyScreen(
                              color: AppColor.gold,
                              text1: "Al-Baqarah",
                              text2: "البقرة",
                              text3: "286 Verses",
                              imagePath: AppAssets.image_AlAnbiya),
                          RecentlyScreen(
                              color: AppColor.gold,
                              text1: "Aal-E-Imran",
                              text2: "آل عمران",
                              text3: "200 Verses",
                              imagePath: AppAssets.image_AlAnbiya),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, left: 20),
                  child: Text(
                    "Suras List",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                SuraseListScreen(
                    image: AppAssets.image_Sura_Number1,
                    text1: "Al-Fatiha",
                    text2: "7 Verses",
                    text3: "الفاتحه"),
                Divider(
                  color: AppColor.white,
                  thickness: 2,
                  indent: 64,
                  endIndent: 60,
                ),
                SuraseListScreen(
                    image: AppAssets.image_Sura_Number2,
                    text1: "Al-Baqarah",
                    text2: "286 Verses",
                    text3: "البقرة"),
                Divider(
                  color: AppColor.white,
                  thickness: 2,
                  indent: 64,
                  endIndent: 60,
                ),
                SuraseListScreen(
                    image: AppAssets.image_Sura_Number3,
                    text1: "Aal-E-Imran",
                    text2: "200 Verses",
                    text3: "آل عمران"),
                Divider(
                  color: AppColor.white,
                  thickness: 2,
                  indent: 64,
                  endIndent: 60,
                ),
                SuraseListScreen(
                    image: AppAssets.image_Sura_Number4,
                    text1: "An-Nisa",
                    text2: "176 Verses",
                    text3: "النساء"),
                Divider(
                  color: AppColor.white,
                  thickness: 2,
                  indent: 64,
                  endIndent: 60,
                ),
                SuraseListScreen(
                    image: AppAssets.image_Sura_Number5,
                    text1: "Al-Ma'idah",
                    text2: "120 Verses",
                    text3: "المائدة"),
                Divider(
                  color: AppColor.white,
                  thickness: 2,
                  indent: 64,
                  endIndent: 60,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
