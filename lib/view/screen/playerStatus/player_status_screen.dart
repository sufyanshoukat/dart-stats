import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/custom_dropdown.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/playerStatus/player_ranking_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class PlayerStatusScreen extends StatelessWidget {
  bool isShowAppBrr;
   PlayerStatusScreen({super.key,required this.isShowAppBrr});
  var selectedValue = 'All'.obs;
  final List<String> statLabels = [
    "3 dart avg.",
    "First 9 avg.",
    "Doubles %",
    "Doubles Rate",
  ];
  final List<String> playerLabel = [
    "3 dart avg.",
    "First 9 avg.",
    "Double Percentage",
    "Doubles Rate",
    "180’s",
    "140+",
    "100+",
    "100+ Finishes",
  ];
  final List<String> playedLabel = [
    "Winning",
    "Legs",
    "Matches",

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // number of tabs
      child: Scaffold(
        appBar: isShowAppBrr ? CustomAppBar() : null,
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
                  child: TabBar(
                    indicatorColor: kYellowColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    labelColor: kQuaternaryColor,
                    unselectedLabelColor: kQuaternaryColor,
                    labelStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      fontFamily: AppFonts.mulish,
                    ),
                    tabs: [
                      Tab(text: 'Player'),
                      Tab(text: 'Team'),
                    ],
                  ),
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: AppSizes.DEFAULT,
                          child: Column(
                            children: [
                              Obx(
                                () => CustomDropDown(
                                  hint: 'Select Game Type',
                                  items: [
                                    'All',
                                    'Action',
                                    'Strategy',
                                    'RPG',
                                    'Puzzle',
                                  ],
                                  selectedValue: selectedValue.value,
                                  onChanged: (value) {
                                    selectedValue.value = value;
                                  },
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyText(
                                          text: "GAME TYPE",
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
                                                value: selectedValue
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
                                                value: selectedValue
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
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MyText(
                                    text: "BEST",
                                    size: 14,
                                    weight: FontWeight.bold,
                                    color: kQuaternaryColor,
                                  ),
                                  SizedBox(width: 60),
                                ],
                              ),
                              SizedBox(height: 12),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: playerLabel.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: MyText(
                                            text: playerLabel[index],
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
                                        MyText(
                                          text: "Graph",
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: kQuaternaryColor,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 50),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MyText(
                                    text: "%",
                                    size: 14,
                                    weight: FontWeight.bold,
                                    color: kQuaternaryColor,
                                  ),
                                  SizedBox(width: 30),
                                  MyText(
                                    text: "Wins",
                                    size: 14,
                                    weight: FontWeight.bold,
                                    color: kQuaternaryColor,
                                  ),
                                  SizedBox(width: 25),
                                  MyText(
                                    text: "Played",
                                    size: 14,
                                    weight: FontWeight.bold,
                                    color: kQuaternaryColor,
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: playedLabel.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: MyText(
                                            text:playedLabel[index],
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
                                        SizedBox(width: 25),
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
                                        SizedBox(
                                          width: 35,
                                          child: Center(
                                            child: MyText(
                                              text: "1",
                                              size: 12,
                                              weight: FontWeight.w500,
                                              color: kQuaternaryColor,
                                            ),
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
                                                value:selectedValue.value,
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
                              Container(
                                width: double.infinity,
                                padding: AppSizes.DEFAULT,
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        MyText(
                                          text: "FXITURES",
                                          size: 18,
                                          weight: FontWeight.w700,
                                        ),
                                        SizedBox(height: 3,),
                                        MyText(
                                          text: "75%  (27 / 36)",
                                          size: 12,
                                          weight: FontWeight.w600,
                                          color: kQuaternaryColor,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        MyText(
                                          text: "MATCHES",
                                          size: 18,
                                          weight: FontWeight.w700,
                                        ),
                                        SizedBox(height: 3,),
                                        MyText(
                                          text: "75%  (27 / 36)",
                                          size: 12,
                                          weight: FontWeight.w600,
                                          color: kQuaternaryColor,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        MyText(
                                          text: "LEGS",
                                          size: 18,
                                          weight: FontWeight.w700,
                                        ),
                                        SizedBox(height: 3,),
                                        MyText(
                                          text: "75%  (27 / 36)",
                                          size: 12,
                                          weight: FontWeight.w600,
                                          color: kQuaternaryColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: double.infinity,
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
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Center(
                                            child: MyText(
                                              text: "SINGLES",
                                              size: 15,
                                              weight: FontWeight.w700,
                                              color: kQuaternaryColor,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 45,
                                          width: 1,
                                          color: kYellowLight2Color,
                                        ),
                                        Expanded(
                                          child: Center(
                                            child: MyText(
                                              text: "DOUBLES",
                                              size: 15,
                                              weight: FontWeight.w700,
                                              color: kQuaternaryColor,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Divider(color: kYellowLight2Color,height: 1,),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              children: [
                                                buildTitleRow(
                                                  title: "FIXTURES",
                                                  percentageText: "75%  (27 / 36)",
                                                ),
                                                SizedBox(height: 20,),
                                                buildTitleRow(
                                                  title: "MATCHES",
                                                  percentageText: "LEGS",
                                                ),
                                                SizedBox(height: 20,),
                                                buildTitleRow(
                                                  title: "LEGS",
                                                  percentageText: "65%  (130 / 200)",
                                                ),


                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 120,
                                          width: 1,
                                          color: kYellowLight2Color,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                                            child: Column(
                                              children: [
                                                buildTitleRow(
                                                  title: "FIXTURES",
                                                  percentageText: "75%  (27 / 36)",
                                                ),
                                                SizedBox(height: 20,),
                                                buildTitleRow(
                                                  title: "MATCHES",
                                                  percentageText: "LEGS",
                                                ),
                                                SizedBox(height: 20,),
                                                buildTitleRow(
                                                  title: "LEGS",
                                                  percentageText: "65%  (130 / 200)",
                                                ),


                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MyText(
                                    text: "BEST",
                                    size: 14,
                                    weight: FontWeight.bold,
                                    color: kQuaternaryColor,
                                  ),
                                  SizedBox(width: 60),
                                ],
                              ),
                              SizedBox(height: 12),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: statLabels.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: MyText(
                                            text: statLabels[index],
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
                                        MyText(
                                          text: "Graph",
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: kQuaternaryColor,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: 15),
                              MyButton(
                                onTap: () {
                                  Get.to(()=>PlayerRankingScreen());
                                },
                                buttonText: "Player Rankings",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildTitleRow({
    required String title,
    required String percentageText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          text: title,
          size: 12,
          weight: FontWeight.w700,
        ),
        MyText(
          text: percentageText,
          size: 10,
          weight: FontWeight.w600,
          color: kQuaternaryColor,
        ),
      ],
    );
  }

}


