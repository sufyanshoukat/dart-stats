import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  bool isShowAppBrr;
  SettingsScreen({super.key,required this.isShowAppBrr});
  final value = false.obs;
  RxBool isExpanded = false.obs;
  RxBool isOther = false.obs;
  RxBool appNotifications = true.obs;
  RxBool darkTheme = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isShowAppBrr ? CustomAppBar() : null,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppSizes.VERTICAL,
            child: Column(
              children: [
                SizedBox(height: 40),
                CommonImageView(imagePath: Assets.imagesAvatar, height: 50),
                SizedBox(height: 15),
                MyText(text: "John Doe", size: 18, weight: FontWeight.w600),
                SizedBox(height: 40),
                Obx(
                  () => Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: const BoxDecoration(color: Color(0x14D0A254)),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => isExpanded.toggle(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "General",
                                size: 16,
                                weight: FontWeight.w300,
                                color: kGreyLightColor,
                              ),
                              Icon(
                                isExpanded.value
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: kGreyLightColor,
                              ),
                            ],
                          ),
                        ),
                        if (isExpanded.value) ...[
                          const SizedBox(height: 22),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "App Notifications",
                                size: 14,
                                weight: FontWeight.w600,
                                color: kTFBorderColor,
                              ),
                              Obx(
                                () => CupertinoSwitch(
                                  value: appNotifications.value,
                                  activeColor: kYellowColor,
                                  onChanged: (newValue) =>
                                      appNotifications.value = newValue,
                                ),
                              ),
                            ],
                          ),
                          Divider(color: kDividerColor),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Dark Theme",
                                size: 14,
                                weight: FontWeight.w600,
                                color: kTFBorderColor,
                              ),
                              Obx(
                                () => CupertinoSwitch(
                                  value: darkTheme.value,
                                  activeColor: kYellowColor,
                                  onChanged: (newValue) =>
                                      darkTheme.value = newValue,
                                ),
                              ),
                            ],
                          ),
                          Divider(color: kDividerColor),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Account Created",
                                  size: 16,
                                  weight: FontWeight.w600,
                                  color: kTFBorderColor,
                                ),
                                Row(
                                  children: [
                                    MyText(
                                      text: "",
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: kGreyLightColor,
                                    ),
                                    const SizedBox(width: 5),
                                    CommonImageView(
                                      svgPath: Assets.svgChevronRight,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(color: kDividerColor),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Renew Membership",
                                  size: 16,
                                  weight: FontWeight.w600,
                                  color: kTFBorderColor,
                                ),
                                Row(
                                  children: [
                                    MyText(
                                      text: "",
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: kGreyLightColor,
                                    ),
                                    const SizedBox(width: 5),
                                    CommonImageView(
                                      svgPath: Assets.svgChevronRight,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(color: kDividerColor),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Filter Matches By",
                                  size: 16,
                                  weight: FontWeight.w600,
                                  color: kTFBorderColor,
                                ),
                                Row(
                                  children: [
                                    MyText(
                                      text: "Tournament",
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: kGreyLightColor,
                                    ),
                                    const SizedBox(width: 5),
                                    CommonImageView(
                                      svgPath: Assets.svgChevronRight,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(color: kDividerColor),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Language",
                                  size: 16,
                                  weight: FontWeight.w600,
                                  color: kTFBorderColor,
                                ),
                                Row(
                                  children: [
                                    MyText(
                                      text: "English",
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: kGreyLightColor,
                                    ),
                                    const SizedBox(width: 5),
                                    CommonImageView(
                                      svgPath: Assets.svgChevronRight,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Obx(
                  () => Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: const BoxDecoration(color: Color(0x14D0A254)),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () => isOther.toggle(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "Other",
                                size: 16,
                                weight: FontWeight.w300,
                                color: kGreyLightColor,
                              ),
                              Icon(
                                isOther.value
                                    ? Icons.keyboard_arrow_up
                                    : Icons.keyboard_arrow_down,
                                color: kGreyLightColor,
                              ),
                            ],
                          ),
                        ),
                        if (isOther.value) ...[
                          const SizedBox(height: 22),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Change Email Address",
                                  size: 16,
                                  weight: FontWeight.w600,
                                  color: kTFBorderColor,
                                ),
                                CommonImageView(svgPath: Assets.svgChevronRight),
                              ],
                            ),
                          ),
                          Divider(color: kDividerColor),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Change Password",
                                  size: 16,
                                  weight: FontWeight.w600,
                                  color: kTFBorderColor,
                                ),
                                CommonImageView(svgPath: Assets.svgChevronRight),
                              ],
                            ),
                          ),
                          Divider(color: kDividerColor),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Privacy Settings",
                                  size: 16,
                                  weight: FontWeight.w600,
                                  color: kTFBorderColor,
                                ),
                                CommonImageView(svgPath: Assets.svgChevronRight),
                              ],
                            ),
                          ),
                          Divider(color: kDividerColor),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  text: "Close Account ",
                                  size: 16,
                                  weight: FontWeight.w600,
                                  color: kTFBorderColor,
                                ),
                                CommonImageView(svgPath: Assets.svgChevronRight),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: AppSizes.DEFAULT,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF14336),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x0C101828),
                          blurRadius: 2,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: MyText(
                        text: "Log Out",
                        size: 14,
                        weight: FontWeight.w600,
                        color: kQuaternaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
