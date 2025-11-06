import 'dart:developer';
import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/drawer.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/home/home_screen.dart';
import 'package:dartmasterapp/view/screen/home/register_new_player_screen.dart';
import 'package:dartmasterapp/view/screen/playerStatus/player_status_screen.dart';
import 'package:dartmasterapp/view/screen/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({Key? key}) : super(key: key);

  final RxInt currentIndex = 0.obs;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> screens = [
    HomeScreen(),
    PlayerStatusScreen(isShowAppBrr: false),
    RegisterNewPlayerScreen(isShowAppBrr: false),
    SettingsScreen(isShowAppBrr: false),
  ];

  List<Map<String, dynamic>> getItems(int index) {
    return [
      {'image': Assets.imagesHome, 'label': 'Home'},
      {'image': Assets.imagesStats, 'label': 'Stats'},
      {'image': Assets.imagesPlay, 'label': 'Play'},
      {'image': Assets.imagesSettings, 'label': 'Settings'},
    ];
  }

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      '',
      'Statistics',
      'Register New\nPlayers',
      'My Code',
    ];

    return Obx(() {
      final items = getItems(currentIndex.value);

      return Scaffold(
        key: scaffoldKey,
        appBar: currentIndex.value == 3
            ? null
            : CustomAppBar3(
                title: MyText(
                  text: titles[currentIndex.value],
                  size: 18,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                  textAlign: TextAlign.center,
                ),
                onDrawerPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                actions: [
                  const SizedBox(width: 10),
                  if (currentIndex.value == 0) ...[
                    CommonImageView(
                      svgPath: Assets.svgNotification,
                      height: 22,
                    ),
                    const SizedBox(width: 20),
                  ],
                ],
              ),
        drawer: CustomDrawer(),
        body: screens[currentIndex.value],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF2C2A1C),
            boxShadow: [
              BoxShadow(
                color: Color(0x1E000000),
                blurRadius: 20,
                offset: Offset(0, 0),
              ),
            ],
          ),
          padding: const EdgeInsets.only(top: 12),

          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            onTap: (index) {
              currentIndex.value = index;
              log("Current Index: $index");
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex.value,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedLabelStyle: TextStyle(
              fontFamily: AppFonts.mulish,
              color: kBlackColor,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: AppFonts.mulish,
              color: kBlackColor,
            ),
            selectedItemColor: kYellowColor,
            unselectedItemColor: kYellowColor,
            items: List.generate(items.length, (index) {
              final item = items[index];
              final isActive = currentIndex.value == index;

              return BottomNavigationBarItem(
                label: '',
                activeIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      item['image'],
                      color: kQuaternaryColor,
                      width: 24,
                    ),
                    const SizedBox(height: 8),
                    MyText(
                      text: item['label'],
                      size: 14,
                      weight: FontWeight.w600,
                      color: kQuaternaryColor,
                    ),
                  ],
                ),
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      item['image'],
                      color: kTertiaryColor,
                      width: 24,
                    ),
                    const SizedBox(height: 8),
                    MyText(
                      text: item['label'],
                      size: 14,
                      weight: FontWeight.w400,
                      color: kTertiaryColor,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      );
    });
  }
}
