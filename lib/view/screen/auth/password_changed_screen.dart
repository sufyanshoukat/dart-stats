import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: CommonImageView(imagePath: Assets.imagesBackButton,height: 35,)),
                ),
                SizedBox(height: 100,),
                CommonImageView(svgPath: Assets.svgSuccessmark,),
                SizedBox(height: 40,),
                MyText(
                  text: "Password Changed",
                  size: 26,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                SizedBox(height: 12,),
                MyText(
                  text:  "Your password has been changed successfully.",
                  size: 16,
                  weight: FontWeight.w400,
                  color: kText2Color,
                ),
                SizedBox(height: 30,),
                MyButton(onTap: (){
                  Get.to(() => LoginScreen());
                }, buttonText: "Back to login"),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
