import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';



class MembershipRenewalScreen extends StatelessWidget {
   MembershipRenewalScreen({super.key});
  RxBool appNotifications = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Membership Renewal",
      ),
      body: SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Current Plan",
                          size: 18,
                          weight: FontWeight.w500,
                          color: kYellowColor,
                        ),
                        SizedBox(height: 7,),
                        MyText(
                          text: "Pro",
                          size: 15,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Expires in",
                          size: 18,
                          weight: FontWeight.w500,
                          color: kYellowColor,
                        ),
                        SizedBox(height: 7,),
                        MyText(
                          text: "5 Days",
                          size: 15,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: "Auto-Renew",
                    size: 18,
                    weight: FontWeight.w400,
                    color: kQuaternaryColor,
                    fontFamily: AppFonts.audioWide,
                  ),
                  Obx(
                        () => CupertinoSwitch(
                      value: appNotifications.value,
                      onChanged: (newValue) =>
                      appNotifications.value = newValue,
                      activeColor: kYellowColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 119,
                      decoration: ShapeDecoration(
                        color: Color(0xFF373935),
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
                          MyText(
                            text: "Monthly",
                            size: 22,
                            weight: FontWeight.w500,
                            color: kYellowColor,
                          ),
                          SizedBox(height: 7,),
                          MyText(
                            text: "\$4.99",
                            size: 22,
                            weight: FontWeight.w500,
                            color: kQuaternaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      height: 119,
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
                          MyText(
                            text: "Annual",
                            size: 22,
                            weight: FontWeight.w500,
                            color: kYellowColor,
                          ),
                          SizedBox(height: 7,),
                          MyText(
                            text: "\$4.99",
                            size: 22,
                            weight: FontWeight.w500,
                            color: kQuaternaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              MyText(
                text: "Payment Method",
                size: 18,
                weight: FontWeight.w400,
                color: kQuaternaryColor,
                fontFamily: AppFonts.audioWide,
              ),
              SizedBox(height: 5,),
              MyTextField(
                prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CommonImageView(imagePath: Assets.imagesPm,height: 15,),
                ),
               hint: "0000 0000 0000 0000",
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(child: MyButton(onTap: (){}, buttonText: "Renew Now")),
                  SizedBox(width: 10,),
                  Expanded(
                    child: MyButton(
                        backgroundColor: Color(0xFFF14336),
                        onTap: (){}, buttonText: "Cancel"),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
