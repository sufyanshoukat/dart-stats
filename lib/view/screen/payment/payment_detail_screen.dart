import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';



class PaymentDetailScreen extends StatelessWidget {
   PaymentDetailScreen({super.key});
  RxBool appNotifications = true.obs;
  RxBool darkTheme = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                MyText(
                  text: "Add credit or debit card",
                  size: 20,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.audioWide,
                ),
                SizedBox(height: 10,),
                MyText(
                  text: "Your payment details are stored securely.\nBy adding a card, you won’t be charged yet.",
                  size: 12,
                  weight: FontWeight.w600,
                  color: Color(0xFF979797),
                ),
                SizedBox(height: 20,),
                MyBorderButton(buttonText: "Scan my card", onTap: (){}),
                SizedBox(height: 60,),
                MyTextField(
                  filledColor: kBackGroundColor,
                  borderColor: kYellowColor,
                  hint: "0000 0000 0000 0000",
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: MyTextField(
                        label: "Expire date",
                        filledColor: kBackGroundColor,
                        borderColor: kYellowColor,
                        hint: "MM / YYYY",
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: MyTextField(
                        label: "CVV",
                        filledColor: kBackGroundColor,
                        borderColor: kYellowColor,
                        hint: "123",
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: "Make this my default card",
                      size: 16,
                      weight: FontWeight.w600,
                      color: kTFBorderColor,
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
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      text: "Save this card for next time",
                      size: 16,
                      weight: FontWeight.w600,
                      color: kTFBorderColor,
                    ),
                    Obx(
                          () => CupertinoSwitch(
                        value: appNotifications.value,
                        onChanged: (newValue) => appNotifications.value = newValue,
                        activeColor: kYellowColor, // your desired active color
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
