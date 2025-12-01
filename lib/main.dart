import 'package:dartmasterapp/view/screen/auth/Register_screen.dart';
import 'package:dartmasterapp/view/screen/auth/app_overview_information_screen.dart';
import 'package:dartmasterapp/view/screen/auth/forget_password_screen.dart';
import 'package:dartmasterapp/view/screen/auth/login_screen.dart';
import 'package:dartmasterapp/view/screen/auth/otp_verification_screen.dart';
import 'package:dartmasterapp/view/screen/auth/password_changed_screen.dart';
import 'package:dartmasterapp/view/screen/auth/reset_password_screen.dart';
import 'package:dartmasterapp/view/screen/auth/start_screen.dart';
import 'package:dartmasterapp/view/screen/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:dartmasterapp/view/screen/competition_statistics/competition_statistics_screen.dart';
import 'package:dartmasterapp/view/screen/fixture/fixture_screen.dart';
import 'package:dartmasterapp/view/screen/fixture/onevsone_screen.dart';
import 'package:dartmasterapp/view/screen/home/edit_player_screen.dart';
import 'package:dartmasterapp/view/screen/home/home_screen.dart';
import 'package:dartmasterapp/view/screen/home/register_new_player_screen.dart';
import 'package:dartmasterapp/view/screen/match_report/match_report_detail_screen.dart';
import 'package:dartmasterapp/view/screen/match_report/match_report_screen.dart';
import 'package:dartmasterapp/view/screen/membership_renewal/membership_renewal_screen.dart';
import 'package:dartmasterapp/view/screen/payment/payment_detail_screen.dart';
import 'package:dartmasterapp/view/screen/payment/payment_screen.dart';
import 'package:dartmasterapp/view/screen/playerStatus/player_ranking_screen.dart';
import 'package:dartmasterapp/view/screen/playerStatus/player_status_screen.dart' hide GameTypeController;
import 'package:dartmasterapp/view/screen/register_tournment/register_tournment_screen.dart';
import 'package:dartmasterapp/view/screen/settings/change_email_address_screen.dart';
import 'package:dartmasterapp/view/screen/settings/change_password_screen.dart';
import 'package:dartmasterapp/view/screen/settings/settings_screen.dart';
import 'package:dartmasterapp/view/splash_service/onboarding_screen.dart';
import 'package:dartmasterapp/view/splash_service/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'config/constants/app_colors.dart';
import 'config/constants/app_fonts.dart';
import 'controller/select_role_controller/select_role_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await UserSimplePreferences.init();
  // ✅ Set bottom navigation bar color globally
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Optional
      statusBarIconBrightness: Brightness.dark, // Optional
      systemNavigationBarColor: Colors.black, // Bottom nav bar color
      systemNavigationBarIconBrightness: Brightness.light, // Icons color
    ),
  );

  Get.put(SelectRoleController());
  runApp(MyApp());
}

final String dummyImage2 = 'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
final String dummyImage1 = 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=150&h=150&fit=crop&crop=face';
final String dummyImage = 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "Passion Port",
      theme: ThemeData(
        fontFamily: AppFonts.mulish,
        useMaterial3: true,
        scaffoldBackgroundColor: kBackGroundColor,
        appBarTheme: AppBarTheme(backgroundColor: kBackGroundColor),
      ),
      home: SplashScreen(),
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}
