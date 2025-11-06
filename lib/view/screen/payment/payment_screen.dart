import 'package:dartmasterapp/config/constants/app_colors.dart';
import 'package:dartmasterapp/config/constants/app_fonts.dart';
import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/generated/assets.dart';
import 'package:dartmasterapp/view/custom/common_image_view_widget.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_text_widget.dart';
import 'package:dartmasterapp/view/screen/payment/payment_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class PaymentScreen extends StatelessWidget {
   PaymentScreen({super.key});
  final RxBool isCardAdded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              children: [
                MyText(
                  text: "Payment Method",
                  size: 18,
                  weight: FontWeight.w600,
                  fontFamily: AppFonts.audioWide,
                  color: kQuaternaryColor,
                ),
                SizedBox(height: 20,),
                Obx(() => isCardAdded.value
                    ? CommonImageView(
                  imagePath: Assets.imagesVisa,
                )
                    : GestureDetector(
                  onTap: () => isCardAdded.value = true,
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 25),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: ShapeDecoration(
                      color: const Color(0x14D0A254),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 40),
                        CommonImageView(
                          imagePath: Assets.imagesAddCard,
                          height: 100,
                        ),
                        MyText(
                          text: "Add credit or debit card",
                          size: 16,
                          weight: FontWeight.w500,
                          color: kQuaternaryColor,
                        ),
                        const SizedBox(height: 60),
                      ],
                    ),
                  ),
                )),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: Divider(color: kQuaternaryColor,)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: MyText(
                        text: "or",
                        size: 16,
                        weight: FontWeight.w500,
                        color: kText3Color,
                      ),
                    ),
                    Expanded(child: Divider(color: kQuaternaryColor,)),
                  ],
                ),
                SizedBox(height: 20,),
                PaymentOptionSelector()

              ],
            ),
          ),
        ),
      ),
    );
  }
}





class PaymentController extends GetxController {
  RxInt selectedIndex = (-1).obs; // No selection initially
}

class PaymentOptionSelector extends StatelessWidget {
  final PaymentController controller = Get.put(PaymentController());

  final List<Map<String, dynamic>> paymentOptions = [
    {
      'title': 'PayPal',
      'image': Assets.imagesPaypal,
    },
    {
      'title': 'Google Pay',
      'image': Assets.imagesGooglePay,
    },
    {
      'title': 'Apple Pay',
      'image': Assets.imagesApplePay,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
      children: List.generate(paymentOptions.length, (index) {
        final isSelected = controller.selectedIndex.value == index;
        final option = paymentOptions[index];

        return GestureDetector(
          onTap: (){
            controller.selectedIndex.value = index;
            Get.to(() => PaymentDetailScreen());
          },
          child: Container(
            width: double.infinity,
            height: 55,
            margin: const EdgeInsets.only(bottom: 25),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: ShapeDecoration(
              color:  const Color(0x14D0A254), // highlighted background

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  padding: EdgeInsets.all(3),
                  decoration: ShapeDecoration(
                    shape: const OvalBorder(
                      side: BorderSide(
                        width: 2,
                        color: kYellowColor,
                      ),
                    ),
                  ),
                  child: isSelected
                      ? Container(
                    width: 16,
                    height: 16,
                    decoration: ShapeDecoration(
                      shape: const OvalBorder(
                        side: BorderSide(
                          width: 1,
                          color: kYellowColor,
                        ),
                      ),
                    ),
                  )
                  :const SizedBox.shrink(),
                ),
                const SizedBox(width: 8),
                MyText(
                  text: option['title'],
                  size: 16,
                  weight: FontWeight.w400,
                  color: kQuaternaryColor,
                ),
                const Spacer(),
                CommonImageView(
                  imagePath: option['image'],
                  height: 25,
                ),
              ],
            ),
          ),
        );
      }),
    ));
  }
}



