import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:dartmasterapp/view/screen/auth/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                  text: "Forgot Password?",
                  size: 26,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                SizedBox(height: 12,),
                MyText(
                  text:  "Don't worry! It occurs. Please enter the\nemail address linked with your account.",
                  size: 16,
                  weight: FontWeight.w400,
                  color: kText2Color,
                ),
                SizedBox(height: 100,),
                MyTextField(
                  hint: "Enter your Email",
                ),
                SizedBox(height: 20,),
                MyButton(onTap: (){
                  Get.to(() => OtpVerificationScreen());
                }, buttonText: "Send Code"),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
