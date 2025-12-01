import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class AppOverviewInformationScreen extends StatelessWidget {
  const AppOverviewInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: (){
                      Get.back();
                    },
                    child: CommonImageView(imagePath: Assets.imagesBackButton,height: 35,)),
                SizedBox(height: 24,),
                MyText(
                  text: "App Overview & Information",
                  size: 26,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),


                SizedBox(height: 45,),
                MyTextField(
                  hint: "Account",
                ),
                MyTextField(
                  hint: "App Overview & Information",
                ),
                MyTextField(
                  hint: "Help",
                ),



                SizedBox(height: 30,),
                Container(
                  width: 344,
                  height: 124,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: kYellowColor,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        color: kYellowLightColor,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    shadows: [
                      BoxShadow(
                        color: kYellowLight2Color,
                        blurRadius: 1,
                        offset: Offset(5, 5),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Center(
                    child: MyText(
                      text: "Coming Soon",
                      size: 22,
                      weight: FontWeight.w600,
                      color: kBackGroundColor,
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                MyText(
                  text: "This section will include terms, cost details, and help information once released.",
                  size: 14,
                  weight: FontWeight.w400,
                  textAlign: TextAlign.center,
                  fontFamily: AppFonts.mulish,
                )






              ],
            ),
          ),
        ),
      ),
    );
  }
}
