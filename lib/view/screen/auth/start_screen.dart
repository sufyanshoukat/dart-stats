import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/auth/Register_screen.dart';
import 'package:dartmasterapp/view/screen/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            Spacer(),
            CommonImageView(imagePath: Assets.imagesLogo,height: 212,),
            SizedBox(height: 80,),
            GestureDetector(
              onTap: (){
                Get.to(() => RegisterScreen(trail: true,));
              },
              child: Container(
                width: double.infinity,
                height: 112,
                decoration: ShapeDecoration(
                  color: const Color(0x87D0A254),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      color: const Color(0xFFDADADA),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: MyText(
                    text: "Start 14-Day\nfree Trial",
                    size: 28,
                    weight: FontWeight.w400,
                    color: kQuaternaryColor,
                    fontFamily: AppFonts.audioWide,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Get.to(() => RegisterScreen(trail: false,));
              },
              child: Container(
                width: double.infinity,
                height: 112,
                decoration: ShapeDecoration(
                  color: const Color(0x87D0A254),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      color: const Color(0xFFDADADA),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: MyText(
                    text: "Upgrade to Full Membership",
                    size: 28,
                    weight: FontWeight.w400,
                    color: kQuaternaryColor,
                    fontFamily: AppFonts.audioWide,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            MyButton(onTap: (){
              Get.to(() => LoginScreen());
            }, buttonText: "Log In"),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
