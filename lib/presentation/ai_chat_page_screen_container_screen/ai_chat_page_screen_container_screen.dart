import 'package:ai_chatclone/presentation/ai_chat_page_screen_page/ai_chat_page_screen_page.dart';import 'package:ai_chatclone/presentation/ai_asistent_page_screen_tab_container_page/ai_asistent_page_screen_tab_container_page.dart';import 'package:ai_chatclone/presentation/history_page/history_page.dart';import 'package:ai_chatclone/presentation/profile_page_screen_page/profile_page_screen_page.dart';import 'package:ai_chatclone/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';import 'package:ai_chatclone/core/app_export.dart';import 'controller/ai_chat_page_screen_container_controller.dart';// ignore_for_file: must_be_immutable
class AiChatPageScreenContainerScreen extends GetWidget<AiChatPageScreenContainerController> {const AiChatPageScreenContainerScreen({Key? key}) : super(key: key, );

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.aiChatPageScreenPage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition, ), ), bottomNavigationBar: _buildBottomBar(), ), ); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}, ); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Chat: return AppRoutes.aiChatPageScreenPage; case BottomBarEnum.Aiassistants: return AppRoutes.aiAsistentPageScreenTabContainerPage; case BottomBarEnum.History: return AppRoutes.historyPage; case BottomBarEnum.Profile: return AppRoutes.profilePageScreenPage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.aiChatPageScreenPage: return AiChatPageScreenPage(); case AppRoutes.aiAsistentPageScreenTabContainerPage: return AiAsistentPageScreenTabContainerPage(); case AppRoutes.historyPage: return HistoryPage(); case AppRoutes.profilePageScreenPage: return ProfilePageScreenPage(); default: return DefaultWidget();} } 
 }
