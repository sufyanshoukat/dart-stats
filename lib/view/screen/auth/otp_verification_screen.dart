import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/custom_animated_row.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/auth/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';



class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

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

                SizedBox(height: 40,),
                MyText(
                  text: "OTP Verification",
                  size: 26,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                SizedBox(height: 12,),
                MyText(
                  text:  "Enter the verification code we just sent on your email address.",
                  size: 16,
                  weight: FontWeight.w400,
                  color: kText2Color,
                ),
                SizedBox(height: 100,),
                AnimatedRow(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Pinput(
                      length: 4,
                      defaultPinTheme: PinTheme(
                        width: 72,
                        height: 60,
                        textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: AppFonts.mulish,
                          color: kQuaternaryColor,
                        ),
                        decoration: BoxDecoration(
                          color: kTFBgColor, // Center color
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all( color: kTFBgColor, width: 1),
                        ),
                        //margin: EdgeInsets.only(left: 8),
                      ),
                      focusedPinTheme: PinTheme(
                        width: 72,
                        height: 60,
                        textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: AppFonts.mulish,
                          color: kQuaternaryColor,
                        ),
                        decoration: BoxDecoration(
                          color: kTFBgColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all( color: Colors.white.withValues(alpha: 0.42), width: 1),
                        ),
                        // margin: EdgeInsets.only(left: 8),
                      ),
                      submittedPinTheme: PinTheme(
                        width: 72,
                        height: 60,
                        textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: kQuaternaryColor,
                        ),
                        decoration: BoxDecoration(
                          color: kTFBgColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white.withValues(alpha: 0.42), width: 1),
                        ),
                        // margin: EdgeInsets.only(left: 8),
                      ),
                      onCompleted: (pin) {},
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                MyButton(onTap: (){
                  Get.to(() => ResetPasswordScreen());
                }, buttonText: "Verify"),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
