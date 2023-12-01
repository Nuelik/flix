import 'package:flutter/material.dart';
import 'package:flix/presentation/splash_screen/splash_screen.dart';
import 'package:flix/presentation/login_screen/login_screen.dart';
import 'package:flix/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:flix/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:flix/presentation/otp_verification_screen/otp_verification_screen.dart';
import 'package:flix/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:flix/presentation/reset_password_success_screen/reset_password_success_screen.dart';
import 'package:flix/presentation/home_container_screen/home_container_screen.dart';
import 'package:flix/presentation/category_comedy_screen/category_comedy_screen.dart';
import 'package:flix/presentation/episode_tab_container_screen/episode_tab_container_screen.dart';
import 'package:flix/presentation/choose_plan_screen/choose_plan_screen.dart';
import 'package:flix/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:flix/presentation/home_recently_watched_screen/home_recently_watched_screen.dart';
import 'package:flix/presentation/search_result_screen/search_result_screen.dart';
import 'package:flix/presentation/not_found_screen/not_found_screen.dart';
import 'package:flix/presentation/empty_state_downloaded_tab_container_screen/empty_state_downloaded_tab_container_screen.dart';
import 'package:flix/presentation/select_saved_screen/select_saved_screen.dart';
import 'package:flix/presentation/saved_empty_screen/saved_empty_screen.dart';
import 'package:flix/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:flix/presentation/notification_screen/notification_screen.dart';
import 'package:flix/presentation/no_notification_screen/no_notification_screen.dart';
import 'package:flix/presentation/history_screen/history_screen.dart';
import 'package:flix/presentation/no_history_screen/no_history_screen.dart';
import 'package:flix/presentation/setting_screen/setting_screen.dart';
import 'package:flix/presentation/language_screen/language_screen.dart';
import 'package:flix/presentation/help_screen/help_screen.dart';
import 'package:flix/presentation/search_help_screen/search_help_screen.dart';
import 'package:flix/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetPasswordSuccessScreen =
      '/reset_password_success_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String categoryComedyScreen = '/category_comedy_screen';

  static const String episodePage = '/episode_page';

  static const String episodeTabContainerScreen =
      '/episode_tab_container_screen';

  static const String similiarPage = '/similiar_page';

  static const String aboutPage = '/about_page';

  static const String choosePlanScreen = '/choose_plan_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String homeRecentlyWatchedScreen =
      '/home_recently_watched_screen';

  static const String searchPage = '/search_page';

  static const String searchResultScreen = '/search_result_screen';

  static const String notFoundScreen = '/not_found_screen';

  static const String downloadedPage = '/downloaded_page';

  static const String downloadedTabContainerPage =
      '/downloaded_tab_container_page';

  static const String downloadingPage = '/downloading_page';

  static const String emptyStateDownloadedPage = '/empty_state_downloaded_page';

  static const String emptyStateDownloadedTabContainerScreen =
      '/empty_state_downloaded_tab_container_screen';

  static const String emptyStateDownloadingPage =
      '/empty_state_downloading_page';

  static const String savedPage = '/saved_page';

  static const String selectSavedScreen = '/select_saved_screen';

  static const String savedEmptyScreen = '/saved_empty_screen';

  static const String profilePage = '/profile_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationScreen = '/notification_screen';

  static const String noNotificationScreen = '/no_notification_screen';

  static const String historyScreen = '/history_screen';

  static const String noHistoryScreen = '/no_history_screen';

  static const String settingScreen = '/setting_screen';

  static const String languageScreen = '/language_screen';

  static const String helpScreen = '/help_screen';

  static const String searchHelpScreen = '/search_help_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => const SplashScreen(),
    loginScreen: (context) => const LoginScreen(),
    signUpScreen: (context) => const SignUpScreen(),
    forgotPasswordScreen: (context) => const ForgotPasswordScreen(),
    otpVerificationScreen: (context) => const OtpVerificationScreen(),
    resetPasswordScreen: (context) => const ResetPasswordScreen(),
    resetPasswordSuccessScreen: (context) => const ResetPasswordSuccessScreen(),
    homeContainerScreen: (context) => const HomeContainerScreen(),
    categoryComedyScreen: (context) => const CategoryComedyScreen(),
    episodeTabContainerScreen: (context) => const EpisodeTabContainerScreen(),
    choosePlanScreen: (context) => ChoosePlanScreen(),
    paymentMethodScreen: (context) => const PaymentMethodScreen(),
    homeRecentlyWatchedScreen: (context) => const HomeRecentlyWatchedScreen(),
    searchResultScreen: (context) => const SearchResultScreen(),
    notFoundScreen: (context) => const NotFoundScreen(),
    emptyStateDownloadedTabContainerScreen: (context) =>
        const EmptyStateDownloadedTabContainerScreen(),
    selectSavedScreen: (context) => const SelectSavedScreen(),
    savedEmptyScreen: (context) => const SavedEmptyScreen(),
    editProfileScreen: (context) => const EditProfileScreen(),
    notificationScreen: (context) => const NotificationScreen(),
    noNotificationScreen: (context) => const NoNotificationScreen(),
    historyScreen: (context) => const HistoryScreen(),
    noHistoryScreen: (context) => const NoHistoryScreen(),
    settingScreen: (context) => const SettingScreen(),
    languageScreen: (context) => const LanguageScreen(),
    helpScreen: (context) => const HelpScreen(),
    searchHelpScreen: (context) => const SearchHelpScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen()
  };
}
