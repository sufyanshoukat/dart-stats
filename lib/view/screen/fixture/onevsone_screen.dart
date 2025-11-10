import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/match_report/match_report_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';



class OnevsoneScreen extends StatelessWidget {
   OnevsoneScreen({super.key});
   final isYesSelected = true.obs;
   final RxInt selectedMatchType = 0.obs;
   final RxInt selectedLS = 0.obs;
   final RxInt selectedBF = 0.obs;
   final RxInt selectedCustom = 0.obs;
   final RxInt selectedFc = 0.obs;
  final List<String> matchType = [
    "Single",
    "Double",
  ];
   final List<String> fC = [
     "Friendly",
     "Competition",
   ];
  final List<String> LS = [
    "Legs",
    "Sets",
  ];
  final List<String> BF = [
    "Best of",
    "First to",
  ];
  final List<String> cus = [
    "301",
    "501",
    "Custom",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: AppSizes.VERTICAL,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: ShapeDecoration(
                    color: kTextColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonImageView(svgPath: Assets.svgFd),
                          SizedBox(width: 4),
                          MyText(
                            text: "Players Details",
                            size: 18,
                            weight: FontWeight.w400,
                            fontFamily: AppFonts.audioWide,
                            color: kQuaternaryColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Obx(
                            () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(fC.length, (index) {
                            final bool isSelected = selectedFc.value == index;

                            return Expanded(
                              child: GestureDetector(
                                onTap: () => selectedFc.value = index,
                                child: Container(
                                  height: 56,
                                  decoration: ShapeDecoration(
                                    color: isSelected
                                        ? const Color(0x87D0A254)
                                        : const Color(0x14D0A254),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 0.5,
                                        color: kTFBorderColor,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  child: Center(
                                    child: MyText(
                                      text: fC[index],
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: kQuaternaryColor,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(
                            () => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(matchType.length, (index) {
                            final bool isSelected = selectedMatchType.value == index;

                            return Expanded(
                              child: GestureDetector(
                                onTap: () => selectedMatchType.value = index,
                                child: Container(
                                  height: 56,
                                  decoration: ShapeDecoration(
                                    color: isSelected
                                        ? const Color(0x87D0A254)
                                        : const Color(0x14D0A254),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 0.5,
                                        color: kTFBorderColor,
                                      ),
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                  ),
                                  child: Center(
                                    child: MyText(
                                      text: matchType[index],
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: kQuaternaryColor,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 46,
                                height: 46,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  shape: OvalBorder(),
                                ),
                              ),
                              SizedBox(height: 16,),
                              MyText(
                                text: "Player 1",
                                size: 12,
                                weight: FontWeight.w500,
                                color: kQuaternaryColor,
                              )
                            ],
                          ),
                          MyText(
                            text: "VS",
                            size: 22,
                            weight: FontWeight.w400,
                            fontFamily: AppFonts.audioWide,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 46,
                                height: 46,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFD9D9D9),
                                  shape: OvalBorder(),
                                ),
                              ),
                              SizedBox(height: 16,),
                              MyText(
                                text: "Player 2",
                                size: 12,
                                weight: FontWeight.w500,
                                color: kQuaternaryColor,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: ShapeDecoration(
                    color: kTextColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      MyText(
                        text: "Format",
                        size: 18,
                        weight: FontWeight.w400,
                        fontFamily: AppFonts.audioWide,
                        color: kQuaternaryColor,
                      ),
                      SizedBox(height: 20,),

                      Row(
                        children: [
                          Expanded(
                            child: Obx(
                                  () => Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(BF.length, (index) {
                                  final bool isSelected = selectedBF.value == index;

                                  return Expanded(
                                    child: GestureDetector(
                                      onTap: () => selectedBF.value = index,
                                      child: Container(
                                        height: 56,
                                        decoration: ShapeDecoration(
                                          color: isSelected
                                              ? const Color(0x87D0A254)
                                              : const Color(0x14D0A254),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              width: 0.5,
                                              color: kTFBorderColor,
                                            ),
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),
                                        child: Center(
                                          child: MyText(
                                            text: BF[index],
                                            size: 12,
                                            weight: FontWeight.w500,
                                            color: kQuaternaryColor,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                          Container(
                            width: 38,
                            height: 70,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: ShapeDecoration(
                              color: const Color(0xFFD0A254),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                            ),
                            child: Center(
                              child: MyText(
                                text: "3",
                                size: 22,
                                weight: FontWeight.w400,
                                fontFamily: AppFonts.audioWide,
                                color: Color(0xFF343221),

                              ),
                            ),
                          ),
                          Expanded(
                            child: Obx(
                                  () => Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(LS.length, (index) {
                                  final bool isSelected = selectedLS.value == index;

                                  return Expanded(
                                    child: GestureDetector(
                                      onTap: () => selectedLS.value = index,
                                      child: Container(
                                        height: 56,

                                        decoration: ShapeDecoration(
                                          color: isSelected
                                              ? const Color(0x87D0A254)
                                              : const Color(0x14D0A254),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              width: 0.5,
                                              color: kTFBorderColor,
                                            ),
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),
                                        child: Center(
                                          child: MyText(
                                            text: LS[index],
                                            size: 12,
                                            weight: FontWeight.w500,
                                            color: kQuaternaryColor,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Expanded(
                            child: Obx(
                                  () => Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(cus.length, (index) {
                                  final bool isSelected = selectedCustom.value == index;

                                  return Expanded(
                                    child: GestureDetector(
                                      onTap: () => selectedCustom.value = index,
                                      child: Container(
                                        height: 56,
                                        decoration: ShapeDecoration(
                                          color: isSelected
                                              ? const Color(0x87D0A254)
                                              : const Color(0x14D0A254),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                              width: 0.5,
                                              color: kTFBorderColor,
                                            ),
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                        ),
                                        child: Center(
                                          child: MyText(
                                            text: cus[index],
                                            size: 12,
                                            weight: FontWeight.w500,
                                            color: kQuaternaryColor,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 74,
                            height: 56,
                            decoration: ShapeDecoration(
                              color: const Color(0xCED0A254),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0.50,
                                  color: const Color(0xFFDADADA),
                                ),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Obx(
                            () => Container(
                          padding: EdgeInsets.all(2),
                          decoration: ShapeDecoration(
                            color: kTFBgColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                color: kTFBorderColor,
                              ),
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => isYesSelected.value = true,
                                  child: Container(

                                    height: 35,
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      color: isYesSelected.value
                                          ? kYellowColor
                                          : Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          22,
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: "Straight In",
                                        size: 12,
                                        weight: FontWeight.w500,
                                        color: kQuaternaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => isYesSelected.value = false,
                                  child: Container(
                                    height: 35,
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      color: isYesSelected.value
                                          ? Colors.transparent
                                          : kYellowColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          22,
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: "Double In",
                                        size: 12,
                                        weight: FontWeight.w500,
                                        color: kQuaternaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Obx(
                            () => Container(
                          padding: EdgeInsets.all(2),
                          decoration: ShapeDecoration(
                            color: kTFBgColor,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.50,
                                color: kTFBorderColor,
                              ),
                              borderRadius: BorderRadius.circular(22),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => isYesSelected.value = true,
                                  child: Container(

                                    height: 35,
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      color: isYesSelected.value
                                          ? kYellowColor
                                          : Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          22,
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: "Straight Out",
                                        size: 12,
                                        weight: FontWeight.w500,
                                        color: kQuaternaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => isYesSelected.value = false,
                                  child: Container(
                                    height: 35,
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      color: isYesSelected.value
                                          ? Colors.transparent
                                          : kYellowColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          22,
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: "Double Out",
                                        size: 12,
                                        weight: FontWeight.w500,
                                        color: kQuaternaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: AppSizes.HORIZONTAL,
                  child: MyButton(onTap: (){
                    Get.to(()=>MatchReportScreen());
                  }, buttonText: "Next"),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: AppSizes.HORIZONTAL,
                  child: MyButton(
                      backgroundColor: Color(0xFFF14336),
                      onTap: (){}, buttonText: "Cancel"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
