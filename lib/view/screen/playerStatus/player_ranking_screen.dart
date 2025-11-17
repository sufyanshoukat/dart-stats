import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/match_report/match_report_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';



class PlayerRankingScreen extends StatelessWidget {
   PlayerRankingScreen({super.key});
  var selectedValue = 'All'.obs;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: AppSizes.VERTICAL,
          child: Column(
            children: [
              // TabBar
              Container(
                width: double.infinity,
                height: 58,
                decoration: BoxDecoration(color: kTextColor),
                child: Center(
                    child: MyText(
                        text: "Player Rankings",
                      size: 22,
                      weight: FontWeight.w700,
                      color: kQuaternaryColor,
                    )),
              ),

              SingleChildScrollView(
                child: Padding(
                  padding: AppSizes.DEFAULT,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: "COMPETITION",
                                  size: 12,
                                  weight: FontWeight.w600,
                                  color: kQuaternaryColor,
                                ),
                                const SizedBox(height: 8),
                                Obx(
                                      () => Container(
                                    width: 91,
                                    height: 22,
                                    decoration: ShapeDecoration(
                                      color: const Color(0x38D0A254),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value:selectedValue
                                            .value,
                                        isExpanded: true,
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: kQuaternaryColor,
                                          size: 15,
                                        ),
                                        dropdownColor: const Color(
                                          0xFF3d3d2f,
                                        ),
                                        style: const TextStyle(
                                          color: Color(0xFF9a9a6a),
                                          fontSize: 14,
                                        ),
                                        padding:
                                        const EdgeInsets.symmetric(
                                          horizontal: 6,
                                        ),
                                        items:
                                        [
                                          'All',
                                          'Action',
                                          'Strategy',
                                          'RPG',
                                          'Puzzle',
                                        ].map((String value) {
                                          return DropdownMenuItem<
                                              String
                                          >(
                                            value: value,
                                            child: MyText(
                                              text: value,
                                              size: 10,
                                              weight:
                                              FontWeight.w500,
                                              color:
                                              kQuaternaryColor,
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          if (newValue != null) {
                                            selectedValue.value = newValue;
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: "STATISTICS",
                                  size: 12,
                                  weight: FontWeight.w600,
                                  color: kQuaternaryColor,
                                ),
                                const SizedBox(height: 8),
                                Obx(
                                      () => Container(
                                    width: 91,
                                    height: 22,
                                    decoration: ShapeDecoration(
                                      color: const Color(0x38D0A254),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: selectedValue.value,
                                        isExpanded: true,
                                        icon: const Icon(
                                          Icons.keyboard_arrow_down,
                                          color: kQuaternaryColor,
                                          size: 15,
                                        ),
                                        dropdownColor: const Color(
                                          0xFF3d3d2f,
                                        ),
                                        style: const TextStyle(
                                          color: Color(0xFF9a9a6a),
                                          fontSize: 14,
                                        ),
                                        padding:
                                        const EdgeInsets.symmetric(
                                          horizontal: 6,
                                        ),
                                        items:
                                        [
                                          'All',
                                          'Action',
                                          'Strategy',
                                          'RPG',
                                          'Puzzle',
                                        ].map((String value) {
                                          return DropdownMenuItem<
                                              String
                                          >(
                                            value: value,
                                            child: MyText(
                                              text: value,
                                              size: 10,
                                              weight:
                                              FontWeight.w500,
                                              color:
                                              kQuaternaryColor,
                                            ),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          if (newValue != null) {
                                            selectedValue.value = newValue;
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MyText(
                            text: "AVG.",
                            size: 10,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                          SizedBox(width: 30),
                          MyText(
                            text: "BEST",
                            size: 10,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                          SizedBox(width: 60),
                        ],
                      ),
                      SizedBox(height: 12),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 14,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: Row(
                              children: [
                                Expanded(
                                  child: MyText(
                                    text: "1. Player Name",
                                    size: 12,
                                    weight: FontWeight.w700,
                                    color: kQuaternaryColor,
                                  ),
                                ),
                                MyText(
                                  text: "0.00",
                                  size: 12,
                                  weight: FontWeight.w500,
                                  color: kQuaternaryColor,
                                ),
                                SizedBox(width: 20),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 2,
                                    horizontal: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      4,
                                    ),
                                    color: kYellowColor,
                                  ),
                                  child: MyText(
                                    text: "0.00",
                                    size: 10,
                                    weight: FontWeight.w500,
                                    color: kQuaternaryColor,
                                  ),
                                ),
                                SizedBox(width: 20),
                                GestureDetector(
                                  onTap:(){
                                    Get.to(()=>MatchReportScreen());
                                  },
                                  child: MyText(
                                    text: "Graph",
                                    size: 12,
                                    weight: FontWeight.w500,
                                    color: kQuaternaryColor,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



