import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/competition_statistics/competition_statistics_screen.dart';
import 'package:dartmasterapp/view/screen/fixture/fixture_screen.dart';
import 'package:dartmasterapp/view/screen/fixture/onevsone_screen.dart';
import 'package:dartmasterapp/view/screen/home/edit_player_screen.dart';
import 'package:dartmasterapp/view/screen/home/register_new_player_screen.dart';
import 'package:dartmasterapp/view/screen/playerStatus/player_status_screen.dart';
import 'package:dartmasterapp/view/screen/register_tournment/register_tournment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSizes.HORIZONTAL,
          child: Column(
            children: [
              Center(
                child: CommonImageView(
                  imagePath: Assets.imagesLogo,
                  height: 100,
                ),
              ),
              SizedBox(height: 20),
              MyButton2(onTap: (){}, buttonText: "Kileens Pub Team",fontSize: 22,),
              SizedBox(height: 8),
              MyButton(onTap: (){}, buttonText: "Start Match"),
              SizedBox(height: 20),
              Align(
                alignment:Alignment.topLeft,
                child: MyText(
                  text: "Player",
                  size: 18,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
              ),
              SizedBox(height: 10),
              Row(
                spacing: 10,
                children: [
                  buildPlayerCard(
                    onTap: (){
                      Get.to(() => RegisterNewPlayerScreen(isShowAppBrr: true,));
                    },
                  text: "Register\nNew Player",
                  imagePath: Assets.imagesRegisterNewPlayer,
                ),
                  buildPlayerCard(
                    onTap: (){
                      Get.to(() => EditPlayerScreen());
                    },
                    text: "Edit Player\nDetails",
                    imagePath: Assets.imagesEpd,
                  ),
                  buildPlayerCard(
                    onTap: (){
                      Get.to(() => PlayerStatusScreen(isShowAppBrr: true,));
                    },
                    text: "Player\nStatistics",
                    imagePath: Assets.imagesPlayerStatic,
                  )


                ],
              ),
              SizedBox(height: 15),
              Align(
                alignment:Alignment.topLeft,
                child: MyText(
                  text: "Competetion",
                  size: 18,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
              ),
              SizedBox(height: 10),
              Row(
                spacing: 5,
                children: [
                  buildPlayerCard(
                    onTap: (){
                      Get.to(() => RegisterTournmentScreen());
                    },
                    text: "Register\nCompetition",
                    imagePath: Assets.imagesRc,
                  ),
                  buildPlayerCard(
                    onTap: (){
                      Get.to(() => FixtureScreen());
                    },
                    text: "Fixtures",
                    imagePath: Assets.imagesFixture,
                  ),
                  buildPlayerCard(
                    onTap: (){
                      Get.to(() => OnevsoneScreen());
                    },
                    text: "1 vs 1\nMatch",
                    imagePath: Assets.images1match,
                  ),
                  buildPlayerCard(
                    onTap: (){
                      Get.to(() => CompetitionStatisticsScreen());
                    },
                    text: "Competition\nStatistics",
                    imagePath: Assets.imagesCs,
                  )


                ],
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  CommonImageView(imagePath: Assets.imagesFreeTrail,),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: MyText(
                      text: "Free trial ends in __ Days\nUpgrade to Full version",
                      size: 18,
                      weight: FontWeight.w400,
                      color: kQuaternaryColor,
                      fontFamily: AppFonts.audioWide,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildPlayerCard({
    required String text,
    required String imagePath,
    required VoidCallback onTap, // <-- Added parameter
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap, // <-- Handles tap event
        child: Container(
          height: 115,
          padding: const EdgeInsets.all(15),
          decoration: ShapeDecoration(
            color: kTFBgColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.50,
                color: kTFBorderColor,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonImageView(
                imagePath: imagePath,
                height: 30,
              ),
              const SizedBox(height: 15),
              MyText(
                text: text,
                size: 12,
                weight: FontWeight.w500,
                textAlign: TextAlign.center,
                color: kQuaternaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }


}