import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:dartmasterapp/view/screen/auth/password_changed_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                  text: "Create new password",
                  size: 26,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                SizedBox(height: 12,),
                MyText(
                  text:  "Your new password must be unique from those previously used.",
                  size: 16,
                  weight: FontWeight.w400,
                  color: kText2Color,
                ),
                SizedBox(height: 20,),
                MyTextField(
                  hint: "New Password",
                ),
                MyTextField(
                  hint: "Confirm Password",
                ),
                SizedBox(height: 30,),
                MyButton(onTap: (){
                  Get.to(() => PasswordChangedScreen());
                }, buttonText: "Reset Password"),




              ],
            ),
          ),
        ),
      ),
    );
  }
}
