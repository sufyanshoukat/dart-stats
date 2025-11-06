import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_sizes.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/custom_appbar.dart';
import '../../custom/my_text_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  final List<Map<String, dynamic>> notifications = const [
    //{'title': 'Account Created!', 'time': '12 mins ago'},
  ];

  @override
  Widget build(BuildContext context) {
    final bool isEmpty = notifications.isEmpty;

    return Scaffold(
      appBar: CustomAppBar(
        title: "Notifications",
        actions: [
          if (!isEmpty) // only show "Clear all" if there are notifications
            MyText(
              text: "Clear all",
              size: 16,
              weight: FontWeight.w600,
              color: kPrimaryColor,
            ),
          const SizedBox(width: 10),
        ],
      ),

      body: Padding(
        padding: AppSizes.DEFAULT,
        child: isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   CommonImageView(
                     imagePath: Assets.imagesBell,
                     height: 75,
                   ),
                    const SizedBox(height: 16),
                    MyText(
                      text: "No Notifications Yet!",
                      size: 22,
                      weight: FontWeight.w600,
                      color: kBlackColor,
                    ),
                    const SizedBox(height: 5),
                    MyText(
                      text: "No Notifications to be shown yet.",
                      size: 14,
                      weight: FontWeight.w600,
                      color: kTextColor,
                    ),
                  ],
                ),
              )
            : ListView.builder(
                itemCount: notifications.length,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: NotificationTile(), // your existing widget
                  );
                },
              ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(1),

      // Left swipe to reveal action
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: 0.2,
        children: [
          CustomSlidableAction(
            onPressed: (context) {
              print("Delete pressed");
            },
            backgroundColor: Colors.transparent,
            padding: EdgeInsets.all(5),
            child: CommonImageView(imagePath: Assets.imagesDeleteNotification),
          ),
        ],
      ),

      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: ShapeDecoration(
          color: kQuaternaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: "Account Created!",
                  size: 16,
                  weight: FontWeight.w600,
                  color: kBlackColor,
                ),
                MyText(
                  text: "12 mins ago",
                  size: 12,
                  weight: FontWeight.w600,
                  color: kTextColor,
                ),
              ],
            ),
            SizedBox(height: 3),
            MyText(
              text: "Your account has been successfully created.",
              size: 12,
              weight: FontWeight.w600,
              color: kTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
