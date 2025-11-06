import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/auth/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  /// 👇 use RxInt, not int
  final RxInt selectedIndex = 0.obs;

  final List<String> onboardingImages = [
    Assets.imagesOnboarding,
    Assets.imagesOnboarding,
    Assets.imagesOnboarding,
  ];

  final List<String> titles = [
    "WELCOME TO \nDARTMASTER!\n",
    "EASY\nSCOREKEEPING",
    "PLAYER AND TEAM\nSTATISTICS",
  ];

  final List<String> descriptions = [
    "Track scores, organize tournaments, and\ntake your darts game to the next level.",
    "Simple, easy to use scoreboard. Just like\nthe old-school blackboard!",
    "Track Players performance and team\nresults with live statistics",
  ];

  void onContinue() {
    if (selectedIndex.value < onboardingImages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Get.to(() => StartScreen());
    }
  }

  void onBack() {
    if (selectedIndex.value > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                child: MyText(
                  text: "Skip",
                  color: Colors.white.withValues(alpha: 0.42),
                  size: 14,
                  weight: FontWeight.w400,
                  fontFamily: AppFonts.audioWide,
                ),
              ),
            ),
            PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                /// 👇 Update RxInt using .value
                selectedIndex.value = index;
              },
              itemCount: onboardingImages.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const Spacer(),
                    CommonImageView(imagePath: onboardingImages[index]),
                    const SizedBox(height: 20),
                    MyText(
                      text: titles[index],
                      size: 26,
                      weight: FontWeight.w400,
                      fontFamily: AppFonts.audioWide,
                      color: kYellowLightColor,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    MyText(
                      textAlign: TextAlign.center,
                      text: descriptions[index],
                      size: 15,
                      weight: FontWeight.w500,
                      color: kText2Color,
                    ),
                    const Spacer(),
                  ],
                );
              },
            ),
            Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 200,
                      child: MyButton(
                        onTap: onContinue,
                        buttonText: selectedIndex.value != 2
                            ? "Next"
                            : "Get Started",
                      ),
                    ),
                  ),
                  const SizedBox(height: 130),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
