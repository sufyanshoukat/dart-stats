import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/custom_dropdown.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:dartmasterapp/view/screen/payment/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';



class RegisterScreen extends StatelessWidget {
  bool trail  = false;
   RegisterScreen({super.key,required this.trail});
  var selectedValue = 'Membership Plan'.obs;

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
                  text: trail ? "14-Day Trial Register": "Register New Account",
                  size: 26,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                if(trail)
                SizedBox(height: 8,),
                if(trail)
                MyText(text: "Payment details are required for registration, payment will not be processes for 14 days. "
                    "User can close the account any time within the first 14 days at no cost.",
                  size: 12,
                  weight: FontWeight.w400,
                ),

                SizedBox(height: 25,),
                MyTextField(
                  hint: "Username",
                ),
                MyTextField(
                  hint: "Team Name",
                ),
                MyTextField(
                  hint: "Email",
                ),
                MyTextField(
                  hint: "Password",
                ),
                MyTextField(
                  hint: "Confirm Password",
                ),
                Obx(
                      () => CustomDropDown(
                    hint: 'Membership Plan',
                    marginBottom: 0,
                    items: [
                      'Membership Plan',
                      'Monthly',
                      'Yearly',
                    ],
                    selectedValue: selectedValue.value,
                    onChanged: (value) {
                      selectedValue.value = value;
                    },
                  ),
                ),

                SizedBox(height: 30,),
                MyButton(onTap: (){
                  Get.to(()=>PaymentScreen());
                }, buttonText: "Proceed to Payment"),
                SizedBox(height: 40,),
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
