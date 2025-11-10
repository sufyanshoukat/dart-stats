import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import '../../config/constants/app_colors.dart';
import '../../config/constants/app_fonts.dart';
import '../../generated/assets.dart';
import 'common_image_view_widget.dart';
import 'my_text_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final Widget? child;
  final VoidCallback? onBackTap;
  final showBackButton;


  const CustomAppBar({
    Key? key,
    this.title,
    this.actions,
    this.child,
    this.onBackTap,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [FadeEffect(duration: Duration(milliseconds: 500))],
      child: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: kBackGroundColor,
        titleSpacing: showBackButton ? 0 : null,
        leading: showBackButton ? InkWell(
          onTap: onBackTap ?? () => Get.back(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: CommonImageView(
              imagePath: Assets.imagesBackButton,
            ),
          ),
        ) : null,
        title: title != null
            ? MyText(
          text: title!,
          size: 18,
          weight: FontWeight.w400,
          color: kQuaternaryColor,
          fontFamily: AppFonts.audioWide,
        )
            : child,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}


class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final VoidCallback? onBackTap;
  final Widget? child;
  final showBackButton;// 👈 Added child property

  const CustomAppBar2({
    Key? key,
    this.title,
    this.actions,
    this.onBackTap,
    this.child,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Animate(
        effects: [FadeEffect(duration: Duration(milliseconds: 500))],
        child: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          titleSpacing: 0,

          leading: showBackButton ? InkWell(
            onTap: onBackTap ?? () => Get.back(),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: CommonImageView(
                svgPath: "Assets.svgMenu",
              ),
            ),
          ) : null,
          title: title != null
              ? MyText(
            text: title!,
            size: 17,
            weight: FontWeight.w600,
            color: kTertiaryColor,
            fontFamily: AppFonts.mulish,
          )
              : child, // 👈 Fallback to custom widget if title is null
          actions: actions,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}



class CustomAppBar3 extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final VoidCallback onDrawerPressed;

  const CustomAppBar3({
    Key? key,
    required this.onDrawerPressed,
    this.title,
    this.actions,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [FadeEffect(duration: Duration(milliseconds: 500))],
      child: AppBar(
        centerTitle: true,
        backgroundColor: kBackGroundColor,
        leading: GestureDetector(
            onTap: onDrawerPressed,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: CommonImageView(imagePath: Assets.imagesMenu,),
            )),
        title:title,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

