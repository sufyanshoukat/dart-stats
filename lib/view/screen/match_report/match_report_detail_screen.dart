import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class MatchReportDetailScreen extends StatelessWidget {
  const MatchReportDetailScreen({super.key});

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
                  text: "Tornament Report",
                  size: 18,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    statBox(count: "10", label: "Matches"),
                    SizedBox(width: 10),
                    statBox(count: "7", label: "Wins"),
                    SizedBox(width: 10),
                    statBox(count: "56% ", label: "Checkout Rate"),
                  ],
                ),
                SizedBox(height: 15,),
                MyButton(onTap: (){}, buttonText: "Export PDF"),
                SizedBox(height: 20,),
                MyText(
                  text: "Fixture Report",
                  size: 18,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    statBox(count: "10", label: "Matches"),
                    SizedBox(width: 10),
                    statBox(count: "7", label: "Wins"),
                    SizedBox(width: 10),
                    statBox(count: "56% ", label: "Checkout Rate"),
                  ],
                ),
                SizedBox(height: 15,),
                MyButton(onTap: (){}, buttonText: "Export PDF"),
                SizedBox(height: 20,),
                MyText(
                  text: "Match Reports",
                  size: 18,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    statBox(count: "78", label: "avg/Leg"),
                    SizedBox(width: 10),
                    statBox(count: "3-0", label: "Score"),
                    SizedBox(width: 10),
                    statBox(count: "56% ", label: "Checkout Rate"),
                  ],
                ),
                SizedBox(height: 15,),
                MyButton(onTap: (){}, buttonText: "Export PDF"),










              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget statBox({
    required String count,
    required String label,
    Color bgColor = const Color(0x87D0A254),
  }) {
    return Expanded(
      child: Container(
        height: 89,
        decoration: ShapeDecoration(
          color: bgColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 0.50,
              color: kTFBorderColor,
            ),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '$count \n',
                    style: TextStyle(
                      color: kQuaternaryColor,
                      fontSize: 22,
                      fontFamily: AppFonts.mulish,
                      fontWeight: FontWeight.w900,
                      height: 1.25,
                    ),
                  ),
                  TextSpan(
                    text: label,
                    style: TextStyle(
                      color: kQuaternaryColor,
                      fontSize: 14,
                      fontFamily: AppFonts.mulish,
                      fontWeight: FontWeight.w500,
                      height: 1.25,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

}
