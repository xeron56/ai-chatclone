import 'package:get/get.dart';
import '../presentation/icons_screen/icons_screen.dart';
import '../presentation/icons_screen/binding/icons_binding.dart';
import '../presentation/oneboarding_screen/oneboarding_screen.dart';
import '../presentation/oneboarding_screen/binding/oneboarding_binding.dart';
import '../presentation/oneboarding_one_screen/oneboarding_one_screen.dart';
import '../presentation/oneboarding_one_screen/binding/oneboarding_one_binding.dart';
import '../presentation/oneboarding_two_screen/oneboarding_two_screen.dart';
import '../presentation/oneboarding_two_screen/binding/oneboarding_two_binding.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/login_actived_screen/login_actived_screen.dart';
import '../presentation/login_actived_screen/binding/login_actived_binding.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import '../presentation/reset_password_screen/reset_password_screen.dart';
import '../presentation/reset_password_screen/binding/reset_password_binding.dart';
import '../presentation/otp_verification_screen/otp_verification_screen.dart';
import '../presentation/otp_verification_screen/binding/otp_verification_binding.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/signup_screen/binding/signup_binding.dart';
import '../presentation/login_one_screen/login_one_screen.dart';
import '../presentation/login_one_screen/binding/login_one_binding.dart';
import '../presentation/ai_chat_page_screen_container_screen/ai_chat_page_screen_container_screen.dart';
import '../presentation/ai_chat_page_screen_container_screen/binding/ai_chat_page_screen_container_binding.dart';
import '../presentation/ai_chat_page_screen_start_screen/ai_chat_page_screen_start_screen.dart';
import '../presentation/ai_chat_page_screen_start_screen/binding/ai_chat_page_screen_start_binding.dart';
import '../presentation/ai_chat_page_screen_start_details_screen/ai_chat_page_screen_start_details_screen.dart';
import '../presentation/ai_chat_page_screen_start_details_screen/binding/ai_chat_page_screen_start_details_binding.dart';
import '../presentation/ai_chat_page_mic_on_screen/ai_chat_page_mic_on_screen.dart';
import '../presentation/ai_chat_page_mic_on_screen/binding/ai_chat_page_mic_on_binding.dart';
import '../presentation/ai_chat_page_keyboard_actived_screen/ai_chat_page_keyboard_actived_screen.dart';
import '../presentation/ai_chat_page_keyboard_actived_screen/binding/ai_chat_page_keyboard_actived_binding.dart';
import '../presentation/chat_page_screen_chat_details_generate_screen/chat_page_screen_chat_details_generate_screen.dart';
import '../presentation/chat_page_screen_chat_details_generate_screen/binding/chat_page_screen_chat_details_generate_binding.dart';
import '../presentation/ai_asistent_page_screen_start_screen/ai_asistent_page_screen_start_screen.dart';
import '../presentation/ai_asistent_page_screen_start_screen/binding/ai_asistent_page_screen_start_binding.dart';
import '../presentation/chat_page_screen_question_chat_screen/chat_page_screen_question_chat_screen.dart';
import '../presentation/chat_page_screen_question_chat_screen/binding/chat_page_screen_question_chat_binding.dart';
import '../presentation/chat_page_screen_question_details_screen/chat_page_screen_question_details_screen.dart';
import '../presentation/chat_page_screen_question_details_screen/binding/chat_page_screen_question_details_binding.dart';
import '../presentation/ai_asistent_page_ai_quote_poetry_screen/ai_asistent_page_ai_quote_poetry_screen.dart';
import '../presentation/ai_asistent_page_ai_quote_poetry_screen/binding/ai_asistent_page_ai_quote_poetry_binding.dart';
import '../presentation/ai_asistent_page_chat_details_generates_screen/ai_asistent_page_chat_details_generates_screen.dart';
import '../presentation/ai_asistent_page_chat_details_generates_screen/binding/ai_asistent_page_chat_details_generates_binding.dart';
import '../presentation/ai_asistent_page_art_image_screen/ai_asistent_page_art_image_screen.dart';
import '../presentation/ai_asistent_page_art_image_screen/binding/ai_asistent_page_art_image_binding.dart';
import '../presentation/ai_asistent_page_art_image_start_screen/ai_asistent_page_art_image_start_screen.dart';
import '../presentation/ai_asistent_page_art_image_start_screen/binding/ai_asistent_page_art_image_start_binding.dart';
import '../presentation/ai_asistent_page_art_image_select_style_screen/ai_asistent_page_art_image_select_style_screen.dart';
import '../presentation/ai_asistent_page_art_image_select_style_screen/binding/ai_asistent_page_art_image_select_style_binding.dart';
import '../presentation/ai_asistent_page_art_image_select_style_actived_screen/ai_asistent_page_art_image_select_style_actived_screen.dart';
import '../presentation/ai_asistent_page_art_image_select_style_actived_screen/binding/ai_asistent_page_art_image_select_style_actived_binding.dart';
import '../presentation/ai_asistent_page_succes_generate_image_screen/ai_asistent_page_succes_generate_image_screen.dart';
import '../presentation/ai_asistent_page_succes_generate_image_screen/binding/ai_asistent_page_succes_generate_image_binding.dart';
import '../presentation/ai_asistent_page_succes_generate_image_change_style_tab_container_screen/ai_asistent_page_succes_generate_image_change_style_tab_container_screen.dart';
import '../presentation/ai_asistent_page_succes_generate_image_change_style_tab_container_screen/binding/ai_asistent_page_succes_generate_image_change_style_tab_container_binding.dart';
import '../presentation/ai_asistent_page_download_image_screen/ai_asistent_page_download_image_screen.dart';
import '../presentation/ai_asistent_page_download_image_screen/binding/ai_asistent_page_download_image_binding.dart';
import '../presentation/ai_asistent_page_reach_js_screen/ai_asistent_page_reach_js_screen.dart';
import '../presentation/ai_asistent_page_reach_js_screen/binding/ai_asistent_page_reach_js_binding.dart';
import '../presentation/ai_asistent_page_reach_js_start_screen/ai_asistent_page_reach_js_start_screen.dart';
import '../presentation/ai_asistent_page_reach_js_start_screen/binding/ai_asistent_page_reach_js_start_binding.dart';
import '../presentation/ai_asistent_page_reach_js_start_details_screen/ai_asistent_page_reach_js_start_details_screen.dart';
import '../presentation/ai_asistent_page_reach_js_start_details_screen/binding/ai_asistent_page_reach_js_start_details_binding.dart';
import '../presentation/ai_asistent_page_limit_screen/ai_asistent_page_limit_screen.dart';
import '../presentation/ai_asistent_page_limit_screen/binding/ai_asistent_page_limit_binding.dart';
import '../presentation/history_page_empty_screen/history_page_empty_screen.dart';
import '../presentation/history_page_empty_screen/binding/history_page_empty_binding.dart';
import '../presentation/history_page_details_screen/history_page_details_screen.dart';
import '../presentation/history_page_details_screen/binding/history_page_details_binding.dart';
import '../presentation/history_page_delet_history_screen/history_page_delet_history_screen.dart';
import '../presentation/history_page_delet_history_screen/binding/history_page_delet_history_binding.dart';
import '../presentation/profile_page_notifications_screen/profile_page_notifications_screen.dart';
import '../presentation/profile_page_notifications_screen/binding/profile_page_notifications_binding.dart';
import '../presentation/profile_page_chose_plan_screen/profile_page_chose_plan_screen.dart';
import '../presentation/profile_page_chose_plan_screen/binding/profile_page_chose_plan_binding.dart';
import '../presentation/profile_page_chose_plan_actived_screen/profile_page_chose_plan_actived_screen.dart';
import '../presentation/profile_page_chose_plan_actived_screen/binding/profile_page_chose_plan_actived_binding.dart';
import '../presentation/payment_page_screen/payment_page_screen.dart';
import '../presentation/payment_page_screen/binding/payment_page_binding.dart';
import '../presentation/payment_page_screen_actived_screen/payment_page_screen_actived_screen.dart';
import '../presentation/payment_page_screen_actived_screen/binding/payment_page_screen_actived_binding.dart';
import '../presentation/payment_page_input_card_screen/payment_page_input_card_screen.dart';
import '../presentation/payment_page_input_card_screen/binding/payment_page_input_card_binding.dart';
import '../presentation/payment_page_input_card_actived_screen/payment_page_input_card_actived_screen.dart';
import '../presentation/payment_page_input_card_actived_screen/binding/payment_page_input_card_actived_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String iconsScreen = '/icons_screen';

  static const String oneboardingScreen = '/oneboarding_screen';

  static const String oneboardingOneScreen = '/oneboarding_one_screen';

  static const String oneboardingTwoScreen = '/oneboarding_two_screen';

  static const String loginScreen = '/login_screen';

  static const String loginActivedScreen = '/login_actived_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String signupScreen = '/signup_screen';

  static const String loginOneScreen = '/login_one_screen';

  static const String aiChatPageScreenPage = '/ai_chat_page_screen_page';

  static const String aiChatPageScreenContainerScreen =
      '/ai_chat_page_screen_container_screen';

  static const String aiChatPageScreenStartScreen =
      '/ai_chat_page_screen_start_screen';

  static const String aiChatPageScreenStartDetailsScreen =
      '/ai_chat_page_screen_start_details_screen';

  static const String aiChatPageMicOnScreen = '/ai_chat_page_mic_on_screen';

  static const String aiChatPageKeyboardActivedScreen =
      '/ai_chat_page_keyboard_actived_screen';

  static const String chatPageScreenChatDetailsGenerateScreen =
      '/chat_page_screen_chat_details_generate_screen';

  static const String aiAsistentPageScreenPage =
      '/ai_asistent_page_screen_page';

  static const String aiAsistentPageScreenTabContainerPage =
      '/ai_asistent_page_screen_tab_container_page';

  static const String aiAsistentPageScreenStartScreen =
      '/ai_asistent_page_screen_start_screen';

  static const String chatPageScreenQuestionChatScreen =
      '/chat_page_screen_question_chat_screen';

  static const String chatPageScreenQuestionDetailsScreen =
      '/chat_page_screen_question_details_screen';

  static const String aiAsistentPageAiQuotePoetryScreen =
      '/ai_asistent_page_ai_quote_poetry_screen';

  static const String aiAsistentPageChatDetailsGeneratesScreen =
      '/ai_asistent_page_chat_details_generates_screen';

  static const String aiAsistentPageArtImageScreen =
      '/ai_asistent_page_art_image_screen';

  static const String aiAsistentPageArtImageStartScreen =
      '/ai_asistent_page_art_image_start_screen';

  static const String aiAsistentPageArtImageSelectStyleScreen =
      '/ai_asistent_page_art_image_select_style_screen';

  static const String aiAsistentPageArtImageSelectStyleActivedScreen =
      '/ai_asistent_page_art_image_select_style_actived_screen';

  static const String aiAsistentPageSuccesGenerateImageScreen =
      '/ai_asistent_page_succes_generate_image_screen';

  static const String aiAsistentPageSuccesGenerateImageChangeStylePage =
      '/ai_asistent_page_succes_generate_image_change_style_page';

  static const String
      aiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen =
      '/ai_asistent_page_succes_generate_image_change_style_tab_container_screen';

  static const String aiAsistentPageDownloadImageScreen =
      '/ai_asistent_page_download_image_screen';

  static const String aiAsistentPageReachJsScreen =
      '/ai_asistent_page_reach_js_screen';

  static const String aiAsistentPageReachJsStartScreen =
      '/ai_asistent_page_reach_js_start_screen';

  static const String aiAsistentPageReachJsStartDetailsScreen =
      '/ai_asistent_page_reach_js_start_details_screen';

  static const String aiAsistentPageLimitScreen =
      '/ai_asistent_page_limit_screen';

  static const String historyPage = '/history_page';

  static const String historyPageEmptyScreen = '/history_page_empty_screen';

  static const String historyPageDetailsScreen = '/history_page_details_screen';

  static const String historyPageDeletHistoryScreen =
      '/history_page_delet_history_screen';

  static const String profilePageScreenPage = '/profile_page_screen_page';

  static const String profilePageNotificationsScreen =
      '/profile_page_notifications_screen';

  static const String profilePageChosePlanScreen =
      '/profile_page_chose_plan_screen';

  static const String profilePageChosePlanActivedScreen =
      '/profile_page_chose_plan_actived_screen';

  static const String paymentPageScreen = '/payment_page_screen';

  static const String paymentPageScreenActivedScreen =
      '/payment_page_screen_actived_screen';

  static const String paymentPageInputCardScreen =
      '/payment_page_input_card_screen';

  static const String paymentPageInputCardActivedScreen =
      '/payment_page_input_card_actived_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iconsScreen,
      page: () => IconsScreen(),
      bindings: [
        IconsBinding(),
      ],
    ),
    GetPage(
      name: oneboardingScreen,
      page: () => OneboardingScreen(),
      bindings: [
        OneboardingBinding(),
      ],
    ),
    GetPage(
      name: oneboardingOneScreen,
      page: () => OneboardingOneScreen(),
      bindings: [
        OneboardingOneBinding(),
      ],
    ),
    GetPage(
      name: oneboardingTwoScreen,
      page: () => OneboardingTwoScreen(),
      bindings: [
        OneboardingTwoBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: loginActivedScreen,
      page: () => LoginActivedScreen(),
      bindings: [
        LoginActivedBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: otpVerificationScreen,
      page: () => OtpVerificationScreen(),
      bindings: [
        OtpVerificationBinding(),
      ],
    ),
    GetPage(
      name: signupScreen,
      page: () => SignupScreen(),
      bindings: [
        SignupBinding(),
      ],
    ),
    GetPage(
      name: loginOneScreen,
      page: () => LoginOneScreen(),
      bindings: [
        LoginOneBinding(),
      ],
    ),
    GetPage(
      name: aiChatPageScreenContainerScreen,
      page: () => AiChatPageScreenContainerScreen(),
      bindings: [
        AiChatPageScreenContainerBinding(),
      ],
    ),
    GetPage(
      name: aiChatPageScreenStartScreen,
      page: () => AiChatPageScreenStartScreen(),
      bindings: [
        AiChatPageScreenStartBinding(),
      ],
    ),
    GetPage(
      name: aiChatPageScreenStartDetailsScreen,
      page: () => AiChatPageScreenStartDetailsScreen(),
      bindings: [
        AiChatPageScreenStartDetailsBinding(),
      ],
    ),
    GetPage(
      name: aiChatPageMicOnScreen,
      page: () => AiChatPageMicOnScreen(),
      bindings: [
        AiChatPageMicOnBinding(),
      ],
    ),
    GetPage(
      name: aiChatPageKeyboardActivedScreen,
      page: () => AiChatPageKeyboardActivedScreen(),
      bindings: [
        AiChatPageKeyboardActivedBinding(),
      ],
    ),
    GetPage(
      name: chatPageScreenChatDetailsGenerateScreen,
      page: () => ChatPageScreenChatDetailsGenerateScreen(),
      bindings: [
        ChatPageScreenChatDetailsGenerateBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageScreenStartScreen,
      page: () => AiAsistentPageScreenStartScreen(),
      bindings: [
        AiAsistentPageScreenStartBinding(),
      ],
    ),
    GetPage(
      name: chatPageScreenQuestionChatScreen,
      page: () => ChatPageScreenQuestionChatScreen(),
      bindings: [
        ChatPageScreenQuestionChatBinding(),
      ],
    ),
    GetPage(
      name: chatPageScreenQuestionDetailsScreen,
      page: () => ChatPageScreenQuestionDetailsScreen(),
      bindings: [
        ChatPageScreenQuestionDetailsBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageAiQuotePoetryScreen,
      page: () => AiAsistentPageAiQuotePoetryScreen(),
      bindings: [
        AiAsistentPageAiQuotePoetryBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageChatDetailsGeneratesScreen,
      page: () => AiAsistentPageChatDetailsGeneratesScreen(),
      bindings: [
        AiAsistentPageChatDetailsGeneratesBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageArtImageScreen,
      page: () => AiAsistentPageArtImageScreen(),
      bindings: [
        AiAsistentPageArtImageBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageArtImageStartScreen,
      page: () => AiAsistentPageArtImageStartScreen(),
      bindings: [
        AiAsistentPageArtImageStartBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageArtImageSelectStyleScreen,
      page: () => AiAsistentPageArtImageSelectStyleScreen(),
      bindings: [
        AiAsistentPageArtImageSelectStyleBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageArtImageSelectStyleActivedScreen,
      page: () => AiAsistentPageArtImageSelectStyleActivedScreen(),
      bindings: [
        AiAsistentPageArtImageSelectStyleActivedBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageSuccesGenerateImageScreen,
      page: () => AiAsistentPageSuccesGenerateImageScreen(),
      bindings: [
        AiAsistentPageSuccesGenerateImageBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen,
      page: () =>
          AiAsistentPageSuccesGenerateImageChangeStyleTabContainerScreen(),
      bindings: [
        AiAsistentPageSuccesGenerateImageChangeStyleTabContainerBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageDownloadImageScreen,
      page: () => AiAsistentPageDownloadImageScreen(),
      bindings: [
        AiAsistentPageDownloadImageBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageReachJsScreen,
      page: () => AiAsistentPageReachJsScreen(),
      bindings: [
        AiAsistentPageReachJsBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageReachJsStartScreen,
      page: () => AiAsistentPageReachJsStartScreen(),
      bindings: [
        AiAsistentPageReachJsStartBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageReachJsStartDetailsScreen,
      page: () => AiAsistentPageReachJsStartDetailsScreen(),
      bindings: [
        AiAsistentPageReachJsStartDetailsBinding(),
      ],
    ),
    GetPage(
      name: aiAsistentPageLimitScreen,
      page: () => AiAsistentPageLimitScreen(),
      bindings: [
        AiAsistentPageLimitBinding(),
      ],
    ),
    GetPage(
      name: historyPageEmptyScreen,
      page: () => HistoryPageEmptyScreen(),
      bindings: [
        HistoryPageEmptyBinding(),
      ],
    ),
    GetPage(
      name: historyPageDetailsScreen,
      page: () => HistoryPageDetailsScreen(),
      bindings: [
        HistoryPageDetailsBinding(),
      ],
    ),
    GetPage(
      name: historyPageDeletHistoryScreen,
      page: () => HistoryPageDeletHistoryScreen(),
      bindings: [
        HistoryPageDeletHistoryBinding(),
      ],
    ),
    GetPage(
      name: profilePageNotificationsScreen,
      page: () => ProfilePageNotificationsScreen(),
      bindings: [
        ProfilePageNotificationsBinding(),
      ],
    ),
    GetPage(
      name: profilePageChosePlanScreen,
      page: () => ProfilePageChosePlanScreen(),
      bindings: [
        ProfilePageChosePlanBinding(),
      ],
    ),
    GetPage(
      name: profilePageChosePlanActivedScreen,
      page: () => ProfilePageChosePlanActivedScreen(),
      bindings: [
        ProfilePageChosePlanActivedBinding(),
      ],
    ),
    GetPage(
      name: paymentPageScreen,
      page: () => PaymentPageScreen(),
      bindings: [
        PaymentPageBinding(),
      ],
    ),
    GetPage(
      name: paymentPageScreenActivedScreen,
      page: () => PaymentPageScreenActivedScreen(),
      bindings: [
        PaymentPageScreenActivedBinding(),
      ],
    ),
    GetPage(
      name: paymentPageInputCardScreen,
      page: () => PaymentPageInputCardScreen(),
      bindings: [
        PaymentPageInputCardBinding(),
      ],
    ),
    GetPage(
      name: paymentPageInputCardActivedScreen,
      page: () => PaymentPageInputCardActivedScreen(),
      bindings: [
        PaymentPageInputCardActivedBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => OneboardingScreen(),
      bindings: [
        OneboardingBinding(),
      ],
    )
  ];
}
