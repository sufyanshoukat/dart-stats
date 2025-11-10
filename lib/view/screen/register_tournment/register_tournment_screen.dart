import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class RegisterTournmentScreen extends StatelessWidget {
   RegisterTournmentScreen({super.key});
  final isYesSelected = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              MyTextField(
                hint: "Name",
              ),
              Obx(() => Container(
                padding: EdgeInsets.all(2),
                decoration: ShapeDecoration(
                  color: kTFBgColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      color: kTFBorderColor,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => isYesSelected.value = true,
                        child: Container(
                          height: 45,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: isYesSelected.value ? kYellowColor : Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Center(
                            child: MyText(
                              text: "TEAM",
                              size: 16,
                              weight: FontWeight.w700,
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
                          height: 45,
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: isYesSelected.value ? Colors.transparent : kYellowColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Center(
                            child: MyText(
                              text: "INDIVIDUAL",
                              size: 16,
                              weight: FontWeight.w700,
                              color: kQuaternaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              SizedBox(height: 40,),
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
