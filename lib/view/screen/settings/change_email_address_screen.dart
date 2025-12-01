import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:flutter/material.dart';



class ChangeEmailAddressScreen extends StatelessWidget {
  const ChangeEmailAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Change Email",
      ),
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            MyTextField(
              label: "Email",
              hint: "Enter new Email",
            ),
            SizedBox(height: 20,),
            MyButton(onTap: (){}, buttonText: "Update")
          ],
        ),
      ),
    );
  }
}
