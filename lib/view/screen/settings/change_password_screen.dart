import 'package:dartmasterapp/config/constants/app_sizes.dart';
import 'package:dartmasterapp/view/custom/custom_appbar.dart';
import 'package:dartmasterapp/view/custom/my_button.dart';
import 'package:dartmasterapp/view/custom/my_textfeild.dart';
import 'package:flutter/material.dart';



class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Change Password",),
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            MyTextField(
              label: "Old Password",
              hint: "Enter Old Password",
            ),
            MyTextField(
              label: "New Password",
              hint: "New Password",
            ),
            MyTextField(
              label: "Confirm New Password",
              hint: "Confirm New Password",
            ),
            SizedBox(height: 15,),
            MyButton(onTap: (){}, buttonText: "Update")

          ],
        ),
      ),
    );
  }
}
