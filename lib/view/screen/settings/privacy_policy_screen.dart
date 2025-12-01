import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Privacy Policy"),
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            MyText(
              text: "Privacy Policy",
              size: 20,
              weight: FontWeight.w700,
              color: kQuaternaryColor,
              fontFamily: AppFonts.audioWide,
            ),

            SizedBox(height: 10),

            MyText(
              text:
              "This privacy policy explains how we collect, use, and protect your data within the app. "
                  "Your information is used to provide and improve our services.",
              size: 14,
              weight: FontWeight.w400,
              color: kQuaternaryColor,
            ),

            SizedBox(height: 15),

            MyText(
              text: "Data Collection",
              size: 18,
              weight: FontWeight.w600,
              color: kQuaternaryColor,
              fontFamily: AppFonts.audioWide,
            ),

            SizedBox(height: 10),

            MyText(
              text:
              "We may collect your name, email, device information, and usage data to improve app performance "
                  "and user experience.",
              size: 14,
              weight: FontWeight.w400,
              color: kQuaternaryColor,
            ),

            SizedBox(height: 15),

            MyText(
              text: "Data Usage",
              size: 18,
              weight: FontWeight.w600,
              color: kQuaternaryColor,
              fontFamily: AppFonts.audioWide,
            ),

            SizedBox(height: 10),

            MyText(
              text:
              "Your data is used strictly for app functionality, analytics, and improving user experience. "
                  "We do not share your personal information with third parties without your consent.",
              size: 14,
              weight: FontWeight.w400,
              color: kQuaternaryColor,
            ),

          ],
        ),
      ),
    );
  }
}
