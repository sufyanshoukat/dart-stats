import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:dartmasterapp/view/screen/auth/Register_screen.dart';
import 'package:dartmasterapp/view/screen/auth/forget_password_screen.dart';
import 'package:dartmasterapp/view/screen/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  text: "Welcome back! Glad\nto see you, Again!",
                  size: 26,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                SizedBox(height: 60,),
                MyTextField(
                  hint: "Enter Email or Username",
                ),
                MyTextField(
                  hint: "Enter your password",
                  suffix: Padding(
                    padding: const EdgeInsets.all(10),
                    child: CommonImageView(svgPath: Assets.svgShowPassword,),
                  ),
                  marginBottom: 3,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(() => ForgetPasswordScreen());
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: MyText(
                      text: "Forgot Password?",
                      size: 14,
                      weight: FontWeight.w600,
                      color: kYellowLightColor,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                MyButton(onTap: (){
                  Get.to(() => BottomNavBar());
                }, buttonText: "Login"),
                SizedBox(height: 60,),
                Row(
                  children: [
                    Expanded(child: Divider(color: kYellowLightColor,)),
                    Padding(
                    padding: AppSizes.HORIZONTAL,
                    child: MyText(
                      text: "Or Login with",
                      size: 14,
                      weight: FontWeight.w600,
                      color: kYellowLightColor,
                    ),
                  ),
                    Expanded(child: Divider(color: kYellowLightColor,)),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    socialButton(Assets.svgFacebook),
                    const SizedBox(width: 10),
                    socialButton(Assets.svgGoogle),
                    const SizedBox(width: 10),
                    socialButton(Assets.svgApple),
                  ],
                ),
                SizedBox(height: 80,),
                GestureDetector(
                  onTap: (){
                    Get.to(() => RegisterScreen(trail: false,));
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don’t have an account? ',
                            style: TextStyle(
                              color: kYellowColor,
                              fontSize: 15,
                              fontFamily: AppFonts.mulish,
                              fontWeight: FontWeight.w500,
                              height: 1.40,
                              letterSpacing: 0.15,
                            ),
                          ),
                          TextSpan(
                            text: 'Register Now',
                            style: TextStyle(
                              color: kYellowLight2Color,
                              fontSize: 15,
                              fontFamily: AppFonts.mulish,
                              fontWeight: FontWeight.w700,
                              height: 1.40,
                              letterSpacing: 0.15,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget socialButton(String svgPath) {
    return Expanded(
      child: Container(
        height: 56,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Color(0xFFFFD99A),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Center(
          child: CommonImageView(svgPath: svgPath),
        ),
      ),
    );
  }

}
