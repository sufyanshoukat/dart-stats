import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class EditPlayerScreen extends StatelessWidget {
   EditPlayerScreen({super.key});
  final isYesSelected = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Edit Player\nDetails",),
      body: SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              MyTextField(
                hint: "Name",
              ),
              MyTextField(
                hint: "NickName",
              ),
              Row(
                children: [
                  Expanded(
                    child: MyTextField(
                      hint: "Co Captain",
                      marginBottom: 0,
                    ),
                  ),
                  SizedBox(width: 8,),
                  Obx(() => Container(
                    width: 156,
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
                        GestureDetector(
                          onTap: () => isYesSelected.value = true,
                          child: Container(
                            width: 75,
                            height: 35,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: isYesSelected.value ? kYellowColor : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            child: Center(
                              child: MyText(
                                text: "YES",
                                size: 12,
                                weight: FontWeight.w500,
                                color: kQuaternaryColor,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => isYesSelected.value = false,
                          child: Container(
                            width: 75,
                            height: 35,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: isYesSelected.value ? Colors.transparent : kYellowColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                            child: Center(
                              child: MyText(
                                text: "NO",
                                size: 12,
                                weight: FontWeight.w500,
                                color: kQuaternaryColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),

              SizedBox(height: 150,),
              MyButton(onTap: (){}, buttonText: "Save & Close"),
              SizedBox(height: 10,),
              MyButton(
                backgroundColor: Color(0xFFF14336),
                  onTap: (){}, buttonText: "Cancel"),
            ],
          ),
        ),
      ),
    );
  }
}
