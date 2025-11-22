import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/custom_animated_row.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/competition_statistics/competition_statistics_screen.dart';
import 'package:dartmasterapp/view/screen/fixture/fixture_screen.dart';
import 'package:dartmasterapp/view/screen/fixture/onevsone_screen.dart';
import 'package:dartmasterapp/view/screen/home/edit_player_screen.dart';
import 'package:dartmasterapp/view/screen/home/register_new_player_screen.dart';
import 'package:dartmasterapp/view/screen/payment/payment_screen.dart';
import 'package:dartmasterapp/view/screen/playerStatus/player_ranking_screen.dart';
import 'package:dartmasterapp/view/screen/playerStatus/player_status_screen.dart';
import 'package:dartmasterapp/view/screen/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final double drawerWidth = MediaQuery.of(context).size.width * 0.7;

    return Container(
      width: drawerWidth,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 20),
      decoration: BoxDecoration(
        color: Color(0xFFD0A254),
        border: const Border(
          right: BorderSide(
            width: 0.5,
            color: Color(0xFFDADADA),
          ),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    /*_buildDrawerItem(
                      "Home",
                      Assets.svgD1,
                      25,
                          () {
                        Get.back();
                      },
                    ),*/
                    Align(
                      alignment: Alignment.topLeft,
                      child: MyText(
                        text: "Players:",
                        size: 18,
                        weight: FontWeight.w400,
                        color: kQuaternaryColor,
                        fontFamily: AppFonts.audioWide,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 25,),
                    _buildDrawerItem(
                      "Player Details",
                      Assets.svgD2,
                      36,
                          () {
                            Get.to(() => RegisterNewPlayerScreen(isShowAppBrr: true,));
                      },
                    ),
                    _buildDrawerItem(
                      "Edit Player Details",
                      Assets.svgD3,
                      36,
                          () {
                            Get.to(() => EditPlayerScreen());
                      },
                    ),
                    _buildDrawerItem(
                      "Player Statistics",
                      Assets.svgD4,
                      36,
                          () {
                            Get.to(() => PlayerStatusScreen(isShowAppBrr: true,));
                      },
                    ),
                    _buildDrawerItem(
                      "Player Ranking",
                      Assets.svgD4,
                      36,
                          () {
                            Get.to(() => PlayerRankingScreen());
                      },
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: MyText(
                        text: "Competition:",
                        size: 18,
                        weight: FontWeight.w400,
                        color: kQuaternaryColor,
                        fontFamily: AppFonts.audioWide,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 25,),
                    _buildDrawerItem(
                      "Fixtures",
                      Assets.svgD6,
                      36,
                          () {
                            Get.to(() => FixtureScreen());
                      },
                    ),
                    _buildDrawerItem(
                      "1 v 1 Match",
                      Assets.svgD7,
                      36,
                          () {
                            Get.to(() => OnevsoneScreen());

                      },
                    ),
                    _buildDrawerItem(
                      "Competition Statistics",
                      Assets.svgD4,
                      36,
                          () {
                            Get.to(() => CompetitionStatisticsScreen());
                      },
                    ),
                    /*_buildDrawerItem(
                      "Payment Method",
                      Assets.svgD8,
                      36,
                          () {
                            Get.to(() => PaymentScreen());
                      },

                    ),
                    _buildDrawerItem(
                      "Profile",
                      Assets.svgD2,
                          36,
                          () {
                            Get.to(() => SettingsScreen(isShowAppBrr: true,));
                      },
                    ),
                    _buildDrawerItem(
                      "Settings",
                      Assets.svgD9,
                      36,
                          () {
                            Get.to(() => SettingsScreen(isShowAppBrr: true,));
                      },
                    ),*/
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(
      String title,
      String icon,
      double bottom,
      VoidCallback onTap,
      ) {
    return Padding(
      padding:  EdgeInsets.only(bottom: bottom),
      child: Bounce(
        duration: const Duration(milliseconds: 200),
        onPressed: onTap,
        child: AnimatedRow(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CommonImageView(
              svgPath: icon,
              height: 22,
            ),
            SizedBox(width: 6,),
            MyText(
              paddingLeft: 10,
              text: title,
              size: 15,
              weight: FontWeight.w600,
              color: kQuaternaryColor,
              fontFamily: AppFonts.mulish,
            ),
          ],
        ),
      ),
    );
  }
}
